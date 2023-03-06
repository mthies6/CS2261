#include "gba.h"
#include "mode4.h"
#include "print.h"
#include "game.h"
#include "sound.h"
#include "space_start.h"

unsigned short oldButtons;
unsigned short buttons;

static int highScore;
char buffer[20];

enum {START = 0, GAME = 1, PAUSE = 2, WIN = 3, LOSE = 4, SCORE = 5};
int state;

//prototypes 
void initialize();
void goToStart();
void goToGame();
void goToPause();
void goToWin();
void goToLose();
void goToScore();

int main() {
    mgba_open();
    REG_DISPCTL = MODE(4) | BG_ENABLE(2) | DISP_BACKBUFFER;
    gameStarted = 0;
    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        switch (state) {
            case (START):
                if (BUTTON_PRESSED(BUTTON_START)){
                    waitForVBlank();
                    flipPage();
                    goToGame();
                }
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToScore();
                }
                break;
            case(GAME):
                updateGame();
                drawGame();
                waitForVBlank();
                flipPage();
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToPause();
                }
                if (score >= 400){
                    goToWin();
                }
                if (lost == 1){
                    goToLose();
                }
                break;
            case (PAUSE):
                if (BUTTON_PRESSED(BUTTON_START)){
                    initialize();
                }
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToGame();
                }
                if (BUTTON_PRESSED(BUTTON_LSHOULDER)){
                    goToScore();
                }
                break;
            case (WIN):
                if (BUTTON_PRESSED(BUTTON_START)){
                    initialize();
                }
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToGame();
                }
                break;
            case (LOSE):
                if (BUTTON_PRESSED(BUTTON_START)){
                    initialize();
                }
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToGame();
                }
                break;
            case (SCORE):
                if (BUTTON_PRESSED(BUTTON_START)){
                    initialize();
                }
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToGame();
                }
                break;
        }
    }
}

//initialize program
void initialize(){
    DMANow(3, space_startPal, PALETTE, 256);

    REG_SOUNDCNT_X = SND_ENABLED;

    REG_SOUNDCNT_L = DMG_VOL_LEFT(5) | DMG_VOL_RIGHT(5) |
                   DMG_SND1_LEFT | DMG_SND1_RIGHT |
                   DMG_SND2_LEFT | DMG_SND2_RIGHT |
                   DMG_SND3_LEFT | DMG_SND3_RIGHT |
                   DMG_SND4_LEFT | DMG_SND4_RIGHT;
    REG_SOUNDCNT_H = DMG_MASTER_VOL(2);

    goToStart();
}

//to start state
void goToStart(){
    gameStarted = 0;
    fillScreen4(BLACK);
    drawFullscreenImage4(space_startBitmap);
    drawString4(12, 13, "Space Invaders", 0);
    drawString4(11, 12, "Space Invaders", 90);


    drawString4(92, 127, "Press SELECT for scores", 90);
    drawString4(112, 137, "Press START to play!", 90);

    waitForVBlank();
    flipPage();
    state = START;
}

//to game state (either restart game or resume)
void goToGame(){
    fillScreen4(BLACK);
    if(!gameStarted){
        gameStarted = 1;
        initializeGame();
    }
    waitForVBlank();
    flipPage();
    state = GAME;
}

//to pause state (with resume)
void goToPause(){
    fillScreen4(BLACK);
    drawString4(101, 50, "PAUSED", 8);
    drawString4(40, 80, "Press SELECT to resume game", 8);
    drawString4(38, 90, "Press START to quit to start", 8);
    drawString4(20, 110, "Press LSHOULDER to go to scoreboard", 8);

    waitForVBlank();
    flipPage();
    state = PAUSE;
}

//to score state (with resume)
void goToScore(){
    fillScreen4(BLACK);
    drawString4(81, 30, "High Score:", 48);
    sprintf(buffer, "%d", highScore);
    drawString4(150, 30, buffer, 48);
    drawString4(40, 80, "Press SELECT to resume game", 48);
    drawString4(38, 90, "Press START to quit to start", 48);

    waitForVBlank();
    flipPage();
    state = PAUSE;
}

//to win state
void goToWin(){
    if (score > highScore){
        highScore = score;
    }
    gameStarted = 0;
    fillScreen4(BLACK);
    drawString4(95, 45, "YOU WIN", 8);

    drawString4(42, 100, "Press SELECT to play again!", 8);
    drawString4(39, 120, "Press START to exit to start", 8);

    waitForVBlank();
    flipPage();
    state = WIN;
}

//to lose state
void goToLose(){
    REG_SND1SWEEP = DMG_SWEEP_DOWN | DMG_SWEEP_NUM(3) | DMG_SWEEP_STEPTIME(3);
    REG_SND1CNT = DMG_ENV_VOL(5) | DMG_STEP_TIME(3);
    REG_SND1FREQ = SND_RESET | NOTE_C4;
    if (score > highScore){
        highScore = score;
    }
    gameStarted = 0;
    lost = 0;
    fillScreen4(BLACK);
    drawString4(95, 45, "YOU LOSE", 8);

    drawString4(47, 100, "Press SELECT to try again", 8);
    drawString4(39, 120, "Press START to exit to start", 8);

    waitForVBlank();
    flipPage();

    state = LOSE;
}