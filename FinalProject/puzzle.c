#include "gba.h"
#include "mode0.h"
#include "print.h"
#include "stdlib.h"
#include "sprites.h"
#include "spritesheet.h"
#include "bugs.h"
#include "game.h"
#include "solve.h"
#include "sound.h"
#include "blueMorpho.h"
#include "worm.h"
#include "bumbleBee.h"
#include "prayingMantis.h"
#include "violinBeetle.h"
#include "leafBug.h"
#include "grasshopper.h"
#include "stagBeetle.h"
#include "shieldBug.h"
#include "dragonHeadedCatepillar.h"
#include "acornWeevil.h"
#include "rosyMapleMoth.h"
#include "interrupts.h"

SPRITE cursor;
SPRITE brush;

int *playerPuzzle;

void initializePuzzle(){
    REG_DISPCTL = MODE(0) | SPRITE_ENABLE | BG_ENABLE(0);
    switch (currentBug){
        case (BLUEMORPHO):
            DMANow(3, blueMorphoMap, &SCREENBLOCK[31], blueMorphoMapLen/2);
            break;
        case (WORM):
            DMANow(3, wormMap, &SCREENBLOCK[31], wormMapLen/2);
            break;
        case (BUMBLEBEE):
            DMANow(3, bumbleBeeMap, &SCREENBLOCK[31], bumbleBeeMapLen/2);
            break;
        case (MANTIS):
            DMANow(3, prayingMantisMap, &SCREENBLOCK[31], prayingMantisMapLen/2);
            break;
        case (VIOLIN):
            DMANow(3, violinBeetleMap, &SCREENBLOCK[31], violinBeetleMapLen/2);
            break;
        case (LEAFBUG):
            DMANow(3, leafBugMap, &SCREENBLOCK[31], leafBugMapLen/2);
            break;
        case (GRASSHOPPER):
            DMANow(3, grasshopperMap, &SCREENBLOCK[31], grasshopperMapLen/2);
            break;
        case (STAG):
            DMANow(3, stagBeetleMap, &SCREENBLOCK[31], stagBeetleMapLen/2);
            break;
        case (SHIELD):
            DMANow(3, shieldBugMap, &SCREENBLOCK[31], shieldBugMapLen/2);
            break;
        case (DRAGON):
            DMANow(3, dragonHeadedCatepillarMap, &SCREENBLOCK[31], dragonHeadedCatepillarMapLen/2);
            break;
        case (ACORN):
            DMANow(3, acornWeevilMap, &SCREENBLOCK[31], acornWeevilMapLen/2);
            break;
        case (MOTH):
            DMANow(3, rosyMapleMothMap, &SCREENBLOCK[31], rosyMapleMothMapLen/2);
            break;
    }

    playerPuzzle = calloc(bugs[currentBug].rarity, sizeof(int));
    
    cursor.x = bugs[currentBug].startX;
    cursor.y = bugs[currentBug].startY;
    cursor.height = 8;
    cursor.width = 8;

    mgba_printf("cursor x: %d", cursor.x);

    brush.x = 192;
    brush.y = 56;
    brush.height = 8;
    brush.width = 8;
}

void updatePuzzle(){
    if (BUTTON_PRESSED(BUTTON_LSHOULDER) && BUTTON_PRESSED(BUTTON_RSHOULDER)){
        mgba_printf("cheated");
        for (int i = 0; i < bugs[currentBug].rarity; i++){
            if (bugs[currentBug].solution[i] == 0){
                SCREENBLOCK[31].tilemap[OFFSET((bugs[currentBug].startX/8) + (i % (bugs[currentBug].puzzleWidth/8)), (bugs[currentBug].startY/8) + (i / (bugs[currentBug].puzzleWidth/8)), 32)] = OFFSET(3, 0, 32);
            }
        }
    }
    if (BUTTON_PRESSED(BUTTON_LEFT) && cursor.x > bugs[currentBug].startX){
        cursor.x -= cursor.width;
    } 
    if (BUTTON_PRESSED(BUTTON_RIGHT) && cursor.x < (bugs[currentBug].puzzleWidth + bugs[currentBug].startX - 8)){
        cursor.x += cursor.width;
    } 
    if (BUTTON_PRESSED(BUTTON_UP) && cursor.y > bugs[currentBug].startY){
        cursor.y -= cursor.height;
    } 
    if (BUTTON_PRESSED(BUTTON_DOWN) && cursor.y < (bugs[currentBug].puzzleWidth + bugs[currentBug].startY - 8)){
        cursor.y += cursor.height;
    }
    if (BUTTON_PRESSED(BUTTON_B)){
        if (brush.x == 208){
            brush.x = 192;
        } else {
            brush.x += brush.width;
        }
    }
    if (BUTTON_PRESSED(BUTTON_A) && !bugs[currentBug].found){
        switch (brush.x){
            case (192):
                SCREENBLOCK[31].tilemap[OFFSET(cursor.x/8, cursor.y/8, 32)] = OFFSET(1, 0, 32);
                playerPuzzle[OFFSET((cursor.x - bugs[currentBug].startX)/8, (cursor.y - bugs[currentBug].startY)/8, bugs[currentBug].puzzleWidth/8)] = 0;
                break;
            case (200):
                SCREENBLOCK[31].tilemap[OFFSET(cursor.x/8, cursor.y/8, 32)] = OFFSET(3, 0, 32);
                playerPuzzle[OFFSET((cursor.x - bugs[currentBug].startX)/8, (cursor.y - bugs[currentBug].startY)/8, bugs[currentBug].puzzleWidth/8)] = 0;
                break;
            case (208):
                SCREENBLOCK[31].tilemap[OFFSET(cursor.x/8, cursor.y/8, 32)] = OFFSET(2, 0, 32);
                playerPuzzle[OFFSET((cursor.x - bugs[currentBug].startX)/8, (cursor.y - bugs[currentBug].startY)/8, bugs[currentBug].puzzleWidth/8)] = 1;
                break;
        }
    }

    shadowOAM[0].attr0 = ATTR0_SQUARE | ATTR0_Y(cursor.y) | ATTR0_REGULAR;
    shadowOAM[0].attr1 = ATTR1_TINY | ATTR1_X(cursor.x);
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 0);

    shadowOAM[1].attr0 = ATTR0_SQUARE | ATTR0_Y(brush.y) | ATTR0_REGULAR;
    shadowOAM[1].attr1 = ATTR1_TINY | ATTR1_X(brush.x);
    shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 0);

    for (int i = 0; i < bugs[currentBug].rarity; i++){
        if (playerPuzzle[i] != bugs[currentBug].solution[i]){
            break;
        } else if (i == (bugs[currentBug].rarity - 1)){
            bugs[currentBug].found = 1;
            free(playerPuzzle);
            PALETTE[6] = WHITE;
            PALETTE[3] = WHITE;
            SCREENBLOCK[31].tilemap[OFFSET(19, 19, 32)] = 111;
            SCREENBLOCK[31].tilemap[OFFSET(20, 19, 32)] = 113;
            SCREENBLOCK[31].tilemap[OFFSET(21, 19, 32)] = 100;
            SCREENBLOCK[31].tilemap[OFFSET(22, 19, 32)] = 114;
            SCREENBLOCK[31].tilemap[OFFSET(23, 19, 32)] = 114;
            
            SCREENBLOCK[31].tilemap[OFFSET(25, 19, 32)] = 114;
            SCREENBLOCK[31].tilemap[OFFSET(26, 19, 32)] = 115;
            SCREENBLOCK[31].tilemap[OFFSET(27, 19, 32)] = 96;
            SCREENBLOCK[31].tilemap[OFFSET(28, 19, 32)] = 113;
            SCREENBLOCK[31].tilemap[OFFSET(29, 19, 32)] = 115;
            playSolveEffect();
        }
    }

    if (BUTTON_PRESSED(BUTTON_START) && bugs[currentBug].found){
        goToRoom();
        PALETTE[6] = BLACK;
        PALETTE[3] = RGB(31, 15, 15);
    }
}