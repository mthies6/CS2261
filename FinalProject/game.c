#include "gba.h"
#include "mode0.h"
#include "print.h"
#include "sprites.h"
#include "blueMorpho.h"
#include "spritesheet.h"
#include "bugs.h"
#include "table.h"
#include "bugBible.h"

OBJ_ATTR shadowOAM[128];

void goToSpray();
void drawGame();
void updateGame();
void goToRoom();
void goToBible();

int hOff;
int vOff;

SPRITE arrow;

enum {ROOM, SPRAY, PUZZLE, BIBLE};
int gameState;

void gameMain(){
    switch(gameState){
        case (ROOM): 
            updateGame();
            waitForVBlank(); 
            drawGame();
            if(BUTTON_PRESSED(BUTTON_START) && arrow.x == 174){
                goToSpray();
            }
            if(BUTTON_PRESSED(BUTTON_START) && arrow.x == 50){
                goToBible();
            }
            break;
        case (SPRAY):
            updateSpray();
            waitForVBlank(); 
            drawGame();
            if(BUTTON_PRESSED(BUTTON_B)){
                goToRoom();
            }
            break;
        case (PUZZLE):
            updatePuzzle();
            waitForVBlank();
            drawGame();
            break;
        case (BIBLE):
            shadowOAM[10].attr0 = ATTR0_TALL | ATTR0_Y(32) | ATTR0_REGULAR;
            shadowOAM[10].attr1 = ATTR1_MEDIUM | ATTR1_X(32);
            shadowOAM[10].attr2 = ATTR2_TILEID(4, 0) | ATTR2_PALROW(0);

            shadowOAM[11].attr0 = ATTR0_TALL | ATTR0_Y(32) | ATTR0_REGULAR;
            shadowOAM[11].attr1 = ATTR1_MEDIUM | ATTR1_X(176);
            shadowOAM[11].attr2 = ATTR2_TILEID(4, 0) | ATTR2_PALROW(1);

            shadowOAM[12].attr0 = ATTR0_TALL | ATTR0_Y(96) | ATTR0_REGULAR;
            shadowOAM[12].attr1 = ATTR1_MEDIUM | ATTR1_X(112);
            shadowOAM[12].attr2 = ATTR2_TILEID(4, 0) | ATTR2_PALROW(2);
            waitForVBlank();
            drawGame();
            
            if(BUTTON_PRESSED(BUTTON_B)){
                goToRoom();
            }
            break;
    }
}

void initializeRoom(){
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | BG_ENABLE(2) |SPRITE_ENABLE;
    mgba_open();
    DMANow(3, tableMap, &SCREENBLOCK[31], tableMapLen/2);

    for (int i = 0; i < tableMapLen/2; i++){
        SCREENBLOCK[31].tilemap[i] |= TMAP_ENTRY_PALROW(2);
    }

    hOff = 150;
    
    gameState = ROOM;
    arrow.numOfFrames = 3;
    arrow.timeUntilNextFrame = 20;
    arrow.height = 32;
    arrow.width = 16;
    arrow.x = 50; 
    arrow.y = 98;
}

void goToRoom(){
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    initializeRoom();
    gameState = ROOM;
}

void goToSpray(){
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    initializeSpray();
    gameState = SPRAY;
}

void goToBible(){
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    DMANow(3, bugBibleMap, &SCREENBLOCK[31], bugBibleMapLen/2);
    for (int i = 0; i < tableMapLen/2; i++){
        SCREENBLOCK[31].tilemap[i] |= TMAP_ENTRY_PALROW(2);
    }
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);


    gameState = BIBLE;
}

void goToPuzzle(){
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    initializePuzzle();
    gameState = PUZZLE;
}

void updateGame(){
    if (BUTTON_PRESSED(BUTTON_LSHOULDER)){
        for (int i = 0; i < BUG_COUNT; i++){
        mgba_printf("bug num: %d, found?: %d", i, bugs[i].found);
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT)){
        hOff--;
    } 
    if (BUTTON_HELD(BUTTON_RIGHT)){
        hOff++;
    } 
    if (BUTTON_HELD(BUTTON_UP)){
        vOff--;
    } 
    if (BUTTON_HELD(BUTTON_DOWN)){
        vOff++;
    }
    if (BUTTON_PRESSED(BUTTON_A)){
        arrow.x = 174;
        arrow.y = 50;
    }
    if (BUTTON_PRESSED(BUTTON_B)){
        arrow.x = 50;
        arrow.y = 98;
    }

    if (vOff > 256 - SCREENHEIGHT) { vOff = 256 - SCREENHEIGHT; }
    if (vOff < 0) { vOff = 0; }
    if (hOff > 512 - SCREENWIDTH) { hOff = 512 - SCREENWIDTH; }
    if (hOff < 0) { hOff = 0; }

    arrow.timeUntilNextFrame--;
    if (arrow.timeUntilNextFrame == 0){
        arrow.frame = (arrow.frame + 1) % arrow.numOfFrames;
        arrow.timeUntilNextFrame = 20;
    }

    shadowOAM[0].attr0 = ATTR0_TALL | ATTR0_Y(arrow.y) | ATTR0_REGULAR;
    shadowOAM[0].attr1 = ATTR1_MEDIUM | ATTR1_X(arrow.x);
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(1, arrow.frame * 4);

    shadowOAM[1].attr0 = ATTR0_SQUARE | ATTR0_Y(75) | ATTR0_REGULAR;
    shadowOAM[1].attr1 = ATTR1_LARGE | ATTR1_X(135) | ATTR1_HFLIP;
    shadowOAM[1].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(6, 0);
}

void drawGame(){
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
    REG_BG2HOFF = hOff/3 - 10;
    REG_BG2VOFF = vOff/3;
    DMANow(3, shadowOAM, OAM, 128*4);
}