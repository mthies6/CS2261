# 1 "interrupts.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "interrupts.c"
# 1 "interrupts.h" 1
int seconds, alertDuration, popupTime, popupX, popupY;

void initializeSprayInterrupts();
void setUpTimers();
void interruptHandler();
# 2 "interrupts.c" 2
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef void (*ihp)(void);






extern volatile unsigned short *videoBuffer;
# 40 "gba.h"
void waitForVBlank();
# 57 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 73 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 105 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 3 "interrupts.c" 2
# 1 "sound.h" 1



void setupSounds();
void playSong();
void playSolveEffect();
# 45 "sound.h"
typedef struct{
    const signed char* data;
    int dataLength;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int vBlankCount;
    unsigned int sampleRate;
} SOUND;

SOUND song;
SOUND solveEffect;

void soundHandler();
# 4 "interrupts.c" 2
# 1 "looping.h" 1


extern const unsigned int looping_sampleRate;
extern const unsigned int looping_length;
extern const signed char looping_data[];
# 5 "interrupts.c" 2
# 1 "solve.h" 1


extern const unsigned int solve_sampleRate;
extern const unsigned int solve_length;
extern const signed char solve_data[];
# 6 "interrupts.c" 2

void initializeSprayInterrupts() {
    seconds = 0;
    alertDuration = 3;
    popupTime = (rand() % 7) + 3;
    popupX = (rand() % 175) + 24;
    popupY = (rand() % 39) + 24;
    *(volatile unsigned short*)0x400010A = 0;
    *(volatile unsigned short*)0x4000108 = 65536 - 16384;
    *(volatile unsigned short*)0x400010A = (1<<7) | (1<<6) | (3);
}

void setUpTimers() {
    *(unsigned short*)0x4000208 = 0;

    *(unsigned short*)0x4000200 = (1 << 0) | (1 << ((2 % 4) + 3));
    *(unsigned short*)0x4000004 = (1 << 3);

    *((ihp*)0x03007FFC) = &interruptHandler;

 *(unsigned short*)0x4000208 = 1;
}

void interruptHandler() {
    *(unsigned short*)0x4000208 = 0;

    if (*(volatile unsigned short*)0x4000202 & (1 << ((2 % 4) + 3))){
        seconds = (seconds + 1) % 60;
    }

    if (*(volatile unsigned short*)0x4000202 & (1 << 0)){
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
                *(volatile unsigned short*)0x4000106 = 0;
                dma[2].cnt = 0;
            }
        }
    }

    *(volatile unsigned short*)0x4000202 = *(volatile unsigned short*)0x4000202;
    *(unsigned short*)0x4000208 = 1;
}

void setupSounds() {

    *(volatile u16 *)0x04000084 = (1<<7);

 *(volatile u16*)0x04000082 = (1<<1) |
                     (1<<2) |
                     (3<<8) |
                     (0<<10) |
                     (1<<11) |
                     (1<<3) |
                     (3<<12) |
                     (1<<14) |
                     (1<<15);

 *(u16*)0x04000080 = 0;

}

void playSong() {
    DMANow(1, looping_data, (u16*)0x040000A0, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

    *(volatile unsigned short*)0x4000102 = 0;
    int cyclesPerSample = (16777216) / 11025;
    *(volatile unsigned short*)0x4000100 = 65536 - cyclesPerSample;
    *(volatile unsigned short*)0x4000102 = (1<<7);

    song.data = looping_data;
    song.dataLength = looping_length ;
    song.looping = 1;
    song.isPlaying = 1;
    song.durationInVBlanks = ((59.727) * looping_length) / 11025;
    song.vBlankCount = 0;
}

void playSolveEffect() {
    DMANow(2, solve_data, (u16*)0x040000A4, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

    *(volatile unsigned short*)0x4000106 = 0;
    int cyclesPerSample = (16777216) / 11025;
    *(volatile unsigned short*)0x4000104 = 65536 - cyclesPerSample;
    *(volatile unsigned short*)0x4000106 = (1<<7);

    solveEffect.data = solve_data;
    solveEffect.dataLength = solve_length;
    solveEffect.looping = 0;
    solveEffect.isPlaying = 1;
    solveEffect.durationInVBlanks = ((59.727) * solve_length) / 11025;
    solveEffect.vBlankCount = 0;
}
