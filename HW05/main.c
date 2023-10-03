#include "gba.h"
#include "mode0.h"
#include "print.h"
#include "sprites.h"
#include "tileset.h"
#include "level1Map.h"
#include "spritesheet.h"
#include "game.h"
#include "overlay.h"
#include "overlayTileSet.h"
#include "loseScreen.h"
#include "level2Map.h"
#include "winScreen.h"
#include "pauseScreen.h"
#include "startScreen.h"

//state info
enum {START, GAME1, GAME2, PAUSE, WIN, LOSE};
int state;

//function prototypes
void testTilemap();
void goToStart();
void goToPause();
void goToInstructions();
void goToWin();
void goToLose();
void goToGame1();
void goToGame2();

unsigned short oldButtons;
unsigned short buttons;


int main() {
    mgba_open();
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);
    
    //set up backgrounds
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(27) | BG_SIZE_SMALL | 0;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_LARGE | 2;

    //set up background tiles
    DMANow(3, tilesetTiles, &CHARBLOCK[0], tilesetTilesLen/2);
    DMANow(3, level1MapMap, &SCREENBLOCK[28], level1MapMapLen/2);

    DMANow(3, overlayTileSetTiles, &CHARBLOCK[1], overlayTileSetTilesLen/2);
    DMANow(3, overlayTileSetPal, PALETTE, overlayTileSetPalLen/2);

    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, 256);

    goToStart();

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        //state machine
        switch(state){
            case (START):
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToGame1();
                }
                seed++;
                break;
            case (GAME1):
                updateGame();
                waitForVBlank();
                drawGame();
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToPause();
                }
                if (lives < 1 || fuel <= 0){
                    goToLose();
                }
                if (flagsCollected == 10){
                    score += (fuel * 10);
                    goToGame2();
                }
                break;
            case (GAME2):
                updateGame();
                waitForVBlank();
                drawGame();
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToPause();
                }
                if (lives < 1 || fuel <= 0){
                    goToLose();
                }
                if (flagsCollected == 10){
                    score += (fuel * 20);
                    goToWin();
                }
                break;
            case (PAUSE):
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    DMANow(3, overlayMap, &SCREENBLOCK[27], overlayMapLen/2);
                    if (level == 1){
                        DMANow(3, level1MapMap, &SCREENBLOCK[28], level1MapMapLen/2);
                        state = GAME1;
                    } else {
                        DMANow(3, level2MapMap, &SCREENBLOCK[28], level2MapMapLen/2);
                        state = GAME2;
                    }
                }
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToStart();
                }
                break;
            case (WIN):
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToStart();
                }
            if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToGame1();
                }
                break;
            case (LOSE):
            if (BUTTON_PRESSED(BUTTON_START)){
                    goToStart();
                }
            if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToGame1();
                }
                break;
        }

    }
}

void goToStart() {
    DMANow(3, startScreenMap, &SCREENBLOCK[27], loseScreenMapLen/2);
    state = START;
    seed = 0;
}

void goToGame1() {
    flagsCollected = 0;
    level = 1;
    initializeGame1();
    state = GAME1;
}

void goToGame2() {
    flagsCollected = 0;
    level = 2;
    initializeGame2();
    state = GAME2;
}

void goToPause() {
    hideSprites();
    drawGame();
    DMANow(3, pauseScreenMap, &SCREENBLOCK[27], loseScreenMapLen/2);
    state = PAUSE;
}

void goToWin() {
    DMANow(3, winScreenMap, &SCREENBLOCK[27], loseScreenMapLen/2);
    state = WIN;
}

void goToLose() {
    DMANow(3, loseScreenMap, &SCREENBLOCK[27], loseScreenMapLen/2);
    state = LOSE;
}