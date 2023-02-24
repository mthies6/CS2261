#include "gba.h"
#include "print.h"
#include "game.h"
#include "sound.h"

unsigned short oldButtons;
unsigned short buttons;

enum {START = 0, GAME = 1, PAUSE = 2, WIN = 3, LOSE = 4};
int state;

//prototypes 
void initialize();
void goToStart();
void goToGame();
void goToPause();
void goToWin();
void goToLose();

int main() {
    seed++;
    mgba_open();
    REG_DISPCTL = MODE(3) | BG_ENABLE(2);

    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        switch (state) {
            case (START):
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToGame();
                }
                break;
            case(GAME):
                updateGame();
                waitForVBlank();
                drawGame();
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToPause();
                }
                if(numKilled >= 50){
                    goToWin();
                }
                if(lives < 1){
                    goToLose();
                }
                break;
            case (PAUSE):
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToStart();
                }
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToGame();
                }
                break;
            case (WIN):
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToStart();
                }
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToGame();
                }
                break;
            case (LOSE):
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToStart();
                }
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToGame();
                }
                break;
                break;
        }
    }
}

//initialize program
void initialize(){
    goToStart();

    REG_SOUNDCNT_X = SND_ENABLED;

    REG_SOUNDCNT_L = DMG_VOL_LEFT(5) |
                   DMG_VOL_RIGHT(5) |
                   DMG_SND1_LEFT |
                   DMG_SND1_RIGHT |
                   DMG_SND2_LEFT |
                   DMG_SND2_RIGHT |
                   DMG_SND3_LEFT |
                   DMG_SND3_RIGHT |
                   DMG_SND4_LEFT |
                   DMG_SND4_RIGHT;
    REG_SOUNDCNT_H = DMG_MASTER_VOL(2);
}

//to start state
void goToStart(){
    fillScreen(RGB(15, 10, 10));
    state = START;
    drawString(81, 37, "Shoot 'Em Up!", BLACK);
    drawString(80, 36, "Shoot 'Em Up!", CYAN);
    drawString(62, 101, "Press START to play!", BLACK);
    drawString(61, 100, "Press START to play!", WHITE);
}

//to game state(either restart game or resume)
void goToGame(){
    fillScreen(BLACK);
    if(!gameStarted){
        gameStarted = 1;
        initializeGame();
    } else {
        //keeps previous information if paused and resumed
        drawBackground();
    }
    state = GAME;
}

//to pause state (with resume)
void goToPause(){
    fillScreen(BLACK);
    state = PAUSE;
    drawString(101, 50, "PAUSED", WHITE);
    drawString(40, 80, "Press SELECT to resume game", WHITE);
    drawString(38, 90, "Press START to quit to start", WHITE);
}

//to win state
void goToWin(){
    gameStarted = 0;
    fillScreen(BLACK);
    state = WIN;
    drawString(96, 46, "YOU WIN", RGB(15,15,15));
    drawString(95, 45, "YOU WIN", MAGENTA);

    drawString(42, 100, "Press SELECT to play again!", RGB(20,20,20));
    drawString(39, 120, "Press START to exit to start", RGB(20,20,20));
}

//to lose state
void goToLose(){
    gameStarted = 0;
    REG_SND2FREQ = SND_RESET;
    REG_SND2CNT = 0;
    fillScreen(BLACK);
    state = LOSE;
    drawString(96, 46, "YOU LOSE", RGB(10,10,10));
    drawString(95, 45, "YOU LOSE", WHITE);

    drawString(47, 100, "Press SELECT to try again", RGB(20,20,20));
    drawString(39, 120, "Press START to exit to start", RGB(20,20,20));
}