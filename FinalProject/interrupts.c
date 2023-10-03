#include "interrupts.h"
#include "gba.h"
#include "sound.h"
#include "looping.h"
#include "solve.h"

void initializeSprayInterrupts() {
    seconds = 0;
    alertDuration = 3;
    popupTime = (rand() % 7) + 3;
    popupX = (rand() % 175) + 24;
    popupY = (rand() % 39) + 24;
    REG_TM2CNT = 0;
    REG_TM2D = 65536 - 16384;
    REG_TM2CNT = TIMER_ON | TM_IRQ | TM_FREQ_1024;
}

void setUpTimers() {
    REG_IME = 0;

    REG_IE = IRQ_VBLANK | IRQ_TIMER(2);
    REG_DISPSTAT = DISPSTAT_VBLANK_IRQ;

    REG_INTERRUPT = &interruptHandler;

	REG_IME = 1;
}

void interruptHandler() {
    REG_IME = 0;

    if (REG_IF & IRQ_TIMER(2)){
        seconds = (seconds + 1) % 60;   
    }

    if (REG_IF & IRQ_VBLANK){
        if (song.isPlaying){
            song.vBlankCount++;
            if (song.vBlankCount >= song.durationInVBlanks){
                playSong();
            }
        }
        if (solveEffect.isPlaying){
            solveEffect.vBlankCount++;
            if (solveEffect.vBlankCount >= solveEffect.durationInVBlanks){
                solveEffect.isPlaying = 0;
                REG_TM1CNT = 0;
                dma[2].cnt = 0;
            }
        }
    }

    REG_IF = REG_IF;
    REG_IME = 1;
}

void setupSounds() {

    REG_SOUNDCNT_X = SND_ENABLED;

	REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_TO_BOTH |
                     DSA_TIMER0 |
                     DSA_FIFO_RESET |
                     DSB_OUTPUT_RATIO_100 |
                     DSB_OUTPUT_TO_BOTH |
                     DSB_TIMER1 |
                     DSB_FIFO_RESET;

	REG_SOUNDCNT_L = 0;

}

void playSong() {
    DMANow(1, looping_data, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

    REG_TM0CNT = 0;
    int cyclesPerSample = PROCESSOR_CYCLES_PER_SECOND / SOUND_FREQ;
    REG_TM0D = 65536 - cyclesPerSample;
    REG_TM0CNT = TIMER_ON;

    song.data = looping_data;
    song.dataLength = looping_length ;
    song.looping = 1;
    song.isPlaying = 1;
    song.durationInVBlanks = (VBLANK_FREQ * looping_length) / SOUND_FREQ; 
    song.vBlankCount = 0;
}

void playSolveEffect() {
    DMANow(2, solve_data, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

    REG_TM1CNT = 0;
    int cyclesPerSample = PROCESSOR_CYCLES_PER_SECOND / SOUND_FREQ;
    REG_TM1D = 65536 - cyclesPerSample;
    REG_TM1CNT = TIMER_ON;

    solveEffect.data = solve_data;
    solveEffect.dataLength = solve_length;
    solveEffect.looping = 0;
    solveEffect.isPlaying = 1;
    solveEffect.durationInVBlanks = (VBLANK_FREQ * solve_length) / SOUND_FREQ; 
    solveEffect.vBlankCount = 0;
}