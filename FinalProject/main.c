#include "gba.h"
#include "mode0.h"
#include "print.h"
#include "sprites.h"
#include "puzzleOverlay.h"
#include "game.h"
#include "room.h"
#include "roomTiles.h"
#include "menuScreen.h"
#include "pauseScreen.h"
#include "spritesheet.h"
#include "winScreen.h"
#include "bugs.h"
#include "city.h"
#include "instructionsOne.h"
#include "instructionsTwo.h"
#include "sound.h"
#include "interrupts.h"

#define MAPWIDTH 0
#define MAPHEIGHT 0

void initialize();
void goToMenu();
void goToPause();
void goToInstructions();
void goToLose();
void goToGame();

void stopSounds();

enum {MENU, GAME, INSTRUCTIONS, PAUSE, WIN, LOSE};
int state;

int seed;

unsigned short oldButtons;
unsigned short buttons;

int main() {
    gameStarted = 0;
    initialize();
    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        switch(state){
            case (MENU):
                seed++;
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToGame();
                    srand(seed);
                }
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToInstructions();
                    srand(seed);
                }
                break;
            case (GAME):
                gameMain();
                for (int i = 0; i < BUG_COUNT; i++){
                    if (bugs[i].found == 0){
                        break;
                    } else if (i == BUG_COUNT - 1){
                        goToWin();
                    }
                }
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToPause();
                }
                break;
            case (INSTRUCTIONS):
                if (BUTTON_PRESSED(BUTTON_A)){
                    DMANow(3, instructionsTwoMap, &SCREENBLOCK[31], instructionsTwoMapLen/2);
                }
                if (BUTTON_PRESSED(BUTTON_B)){
                    DMANow(3, instructionsOneMap, &SCREENBLOCK[31], instructionsOneMapLen/2);
                }
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToMenu();
                }
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToGame();
                }
                break;
            case (PAUSE):
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToMenu();
                }
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToGame();
                }
                break;
            case (WIN):
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToMenu();
                }
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToGame();
                }
                break;
        }
    }
}


void initialize() {
    setUpTimers();
    setupSounds();
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);

    REG_DISPCTL = MODE(0) | BG_ENABLE(1) | BG_ENABLE(0) | BG_ENABLE(2) | SPRITE_ENABLE;

    //overlay background
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL; 

    //room background
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(29) | BG_SIZE_WIDE; 
    DMANow(3, puzzleOverlayPal, PALETTE, 256);

    //lowest background
    REG_BG2CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(27) | BG_SIZE_WIDE;

    //put overlay tiles into bg0 charblock
    DMANow(3, puzzleOverlayTiles, &CHARBLOCK[0], puzzleOverlayTilesLen/2);

    //put other background tiles into bg1 charblock
    DMANow(3, roomTilesTiles, &CHARBLOCK[1], roomTilesTilesLen/2);

    //set bg2 to city background
    DMANow(3, cityMap, &SCREENBLOCK[27], cityMapLen/2);
    for (int i = 0; i < cityMapLen/2; i++){
        SCREENBLOCK[27].tilemap[i] |= TMAP_ENTRY_PALROW(3);
    }

    //set bg1 to room background
    DMANow(3, roomMap, &SCREENBLOCK[29], roomMapLen/2);
    //loop through the screenblock and set palette row
    for (int i = 0; i < roomMapLen/2; i++){
        SCREENBLOCK[29].tilemap[i] |= TMAP_ENTRY_PALROW(1);
    }

    //set bg0 to be opening menu words
    DMANow(3, menuScreenMap, &SCREENBLOCK[31], menuScreenMapLen/2);

    state = MENU;
}

void goToMenu(){
    gameStarted = 0;
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    
    //set bg0 to be opening menu words
    DMANow(3, menuScreenMap, &SCREENBLOCK[31], menuScreenMapLen/2);
    state = MENU;
}

void goToPause(){
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    DMANow(3, pauseScreenMap, &SCREENBLOCK[31], pauseScreenMapLen/2);

    state = PAUSE;
}

void goToInstructions(){
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    DMANow(3, instructionsOneMap, &SCREENBLOCK[31], instructionsOneMapLen/2);
    state = INSTRUCTIONS;
}

void goToWin(){
    gameStarted = 0;
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    DMANow(3, winScreenMap, &SCREENBLOCK[31], winScreenMapLen/2);
    state = WIN;
}

void goToGame(){
    initializeBugs();
    if (!gameStarted){
        gameStarted = 1;
        playSong();
    }
    goToRoom();
    state = GAME;
}