#include "gba.h"
#include "mode0.h"
#include "print.h"
#include "sprites.h"
#include "blueMorpho.h"
#include "spritesheet.h"
#include "bugs.h"
#include "sprayScreen.h"
#include "game.h"
#include "time.h"
#include "interrupts.h"

void interruptHandler();
void newPopup();

SPRITE sprayBottle;

void initializeSpray(){
    initializeSprayInterrupts();
    DMANow(3, sprayScreenMap, &SCREENBLOCK[31], sprayScreenMapLen/2);
    for (int i = 0; i < sprayScreenMapLen/2; i++){
        SCREENBLOCK[31].tilemap[i] |= TMAP_ENTRY_PALROW(2);
    }

    currentBug = rand() % BUG_COUNT;
    while (bugs[currentBug].found == 1){
        currentBug = (currentBug + 1) % BUG_COUNT;
    }

    sprayBottle.x = 10;
    sprayBottle.y = 10;
    sprayBottle.numOfFrames = 3;
    sprayBottle.timeUntilNextFrame = 20;
}

void updateSpray(){
    if (seconds < popupTime){
        sprayBottle.timeUntilNextFrame--;

        if (sprayBottle.timeUntilNextFrame == 0){
            sprayBottle.frame = (sprayBottle.frame + 1) % sprayBottle.numOfFrames;
            sprayBottle.timeUntilNextFrame = 20;
        }

        shadowOAM[1].attr0 = ATTR0_SQUARE | ATTR0_Y(sprayBottle.x) | ATTR0_REGULAR;
        shadowOAM[1].attr1 = ATTR1_LARGE | ATTR1_X(sprayBottle.y);
        shadowOAM[1].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(6, sprayBottle.frame * 8);
    }
    if (seconds == popupTime){
        shadowOAM[1].attr0 = ATTR0_HIDE;
        newPopup();
    }
    if (seconds >= popupTime){
        if (BUTTON_PRESSED(BUTTON_A)){
            REG_TM2CNT = 0;
            seconds = 0;
            goToPuzzle();
        }
        else if(seconds == popupTime + alertDuration){
            shadowOAM[0].attr0 = ATTR0_HIDE;
            REG_TM2CNT = 0;

            initializeSprayInterrupts();
            
            currentBug = rand() % BUG_COUNT;
            while (bugs[currentBug].found == 1){
                currentBug = (currentBug + 1) % BUG_COUNT;
            }
        }
    }
}

void newPopup(){
    shadowOAM[0].attr0 = ATTR0_TALL | ATTR0_Y(popupY) | ATTR0_REGULAR;
    shadowOAM[0].attr1 = ATTR1_MEDIUM | ATTR1_X(popupX);
    shadowOAM[0].attr2 = ATTR2_TILEID(4, 0);

    switch (bugs[currentBug].rarity){
        case (COMMON):
            shadowOAM[0].attr2 |= ATTR2_PALROW(0);
            break;
        case (UNCOMMON):
            shadowOAM[0].attr2 |= ATTR2_PALROW(1);
            break;
        case (RARE):
            shadowOAM[0].attr2 |= ATTR2_PALROW(2);
            break;
    }
}

