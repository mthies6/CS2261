#include "bugs.h"
#include "print.h"

BUG bugs[BUG_COUNT];

void initializeBugs(){
    //blue morpho
    bugs[BLUEMORPHO].found = 0;
    bugs[BLUEMORPHO].solution = blueMorphoSolution;
    bugs[BLUEMORPHO].rarity = COMMON;
    bugs[BLUEMORPHO].palRow = 0;

    //worm
    bugs[WORM].found = 0;
    bugs[WORM].solution = wormSolution;
    bugs[WORM].rarity = COMMON;
    bugs[WORM].palRow = 0;

    //bumble bee
    bugs[BUMBLEBEE].found = 0;
    bugs[BUMBLEBEE].solution = bumbleBeeSolution;
    bugs[BUMBLEBEE].rarity = COMMON;
    bugs[BUMBLEBEE].palRow = 2;

    //praying mantis
    bugs[MANTIS].found = 0;
    bugs[MANTIS].solution = prayingMantisSolution;
    bugs[MANTIS].rarity = COMMON;
    bugs[MANTIS].palRow = 3;

    //violin beetle
    bugs[VIOLIN].found = 0;
    bugs[VIOLIN].solution = violinBeetleSolution;
    bugs[VIOLIN].rarity = COMMON;
    bugs[VIOLIN].palRow = 2;
    

    //leaf bug
    bugs[LEAFBUG].found = 0;
    bugs[LEAFBUG].solution = leafBugSolution;
    bugs[LEAFBUG].rarity = COMMON;
    bugs[LEAFBUG].palRow = 3;
    

    //green milkweed grasshopper
    bugs[GRASSHOPPER].found = 0;
    bugs[GRASSHOPPER].solution = grasshopperSolution;
    bugs[GRASSHOPPER].rarity = UNCOMMON;

    //stag beetle
    bugs[STAG].found = 0;
    bugs[STAG].solution = stagBeetleSolution;
    bugs[STAG].rarity = UNCOMMON;
    bugs[STAG].palRow = 2;

    //shield bug
    bugs[SHIELD].found = 0;
    bugs[SHIELD].solution = shieldBugSolution;
    bugs[SHIELD].rarity = UNCOMMON;

    //dragon headed catepillar
    bugs[DRAGON].found = 0;
    bugs[DRAGON].solution = dragonHeadedCatepillarSolution;
    bugs[DRAGON].rarity = UNCOMMON;

    //acorn weevil
    bugs[ACORN].found = 0;
    bugs[ACORN].solution = acornWeevilSolution;
    bugs[ACORN].rarity = RARE;

    //rosy maple moth
    bugs[MOTH].found = 0;
    bugs[MOTH].solution = rosyMapleMothSolution;
    bugs[MOTH].rarity = RARE;

    for (int i = 0; i < BUG_COUNT; i++){
        if (bugs[i].rarity == COMMON){
            bugs[i].startX = 80;
            bugs[i].startY = 40;
            bugs[i].puzzleWidth = 80;
        } else if (bugs[i].rarity == UNCOMMON){
            bugs[i].startX = 64;
            bugs[i].startY = 32;
            bugs[i].puzzleWidth = 96;
        }
         else if (bugs[i].rarity == RARE){
            bugs[i].startX = 48;
            bugs[i].startY = 32;
            bugs[i].puzzleWidth = 112;
        }
        mgba_printf("bug num: %d, rarity: %d", i, bugs[i].rarity);
    }
}

//commons
int blueMorphoSolution[100] = {
    0, 1, 0, 0, 0, 0, 0, 0, 1, 0,
    1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 
    1, 1, 1, 1, 0, 0, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    0, 1, 1, 1, 1, 1, 1, 1, 1, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 0, 0, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 0, 0,
    0, 0, 1, 1, 0, 0, 1, 1, 0, 0,
    0, 1, 1, 0, 0, 0, 0, 1, 1, 0
};

int wormSolution[100] = {
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 1, 1, 0,
    1, 1, 1, 0, 0, 0, 0, 1, 1, 1,
    0, 1, 1, 1, 0, 0, 1, 1, 1, 1,
    0, 1, 1, 1, 1, 0, 1, 1, 1, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 1, 0,
    0, 0, 0, 1, 1, 1, 1, 1, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

int bumbleBeeSolution[100] = {
    0, 1, 1, 0, 0, 1, 0, 0, 0, 0,
    1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 
    0, 0, 0, 1, 1, 1, 1, 0, 0, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 1, 0,
    1, 1, 1, 1, 1, 1, 1, 1, 0, 1,
    0, 1, 1, 1, 1, 1, 1, 1, 0, 0,
    0, 1, 1, 1, 1, 1, 1, 0, 1, 0,
    0, 0, 1, 1, 1, 1, 0, 0, 1, 0,
    0, 0, 0, 0, 1, 0, 0, 1, 1, 0,
    0, 0, 0, 0, 1, 1, 1, 0, 0, 0
};

int prayingMantisSolution[100] = {
    0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 
    0, 0, 1, 1, 1, 0, 0, 0, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 0, 0, 0,
    0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 
    0, 1, 1, 1, 1, 1, 1, 1, 1, 0,
    1, 1, 1, 0, 0, 1, 1, 1, 1, 1,
    1, 1, 0, 0, 0, 0, 1, 1, 1, 1,
    1, 0, 0, 0, 0, 1, 1, 1, 1, 1,
    0, 0, 0, 1, 1, 0, 1, 1, 1, 0,
    0, 0, 0, 1, 0, 0, 1, 0, 0, 1
};

int violinBeetleSolution[100] = {
    1, 0, 1, 1, 1, 1, 1, 0, 1, 0,
    1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 
    0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 
    0, 0, 0, 1, 1, 1, 0, 0, 0, 0,
    0, 1, 1, 0, 1, 0, 1, 1, 0, 0,
    1, 0, 0, 1, 1, 1, 0, 0, 1, 0,
    0, 0, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 0, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 1, 1, 1, 1, 1, 1, 1, 0, 0,
    1, 0, 0, 1, 1, 1, 0, 0, 1, 0
};

int leafBugSolution[100] = {
    0, 0, 1, 1, 0, 1, 0, 0, 1, 0,
    0, 0, 0, 1, 0, 0, 1, 0, 1, 1,
    1, 1, 0, 0, 1, 0, 1, 1, 0, 0,
    1, 1, 1, 0, 0, 1, 1, 1, 1, 0,
    1, 0, 1, 1, 1, 1, 1, 0, 0, 1,
    0, 1, 1, 1, 1, 1, 0, 1, 0, 0,
    1, 1, 1, 1, 1, 1, 0, 0, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 0, 0, 1,
    1, 1, 1, 1, 1, 0, 1, 1, 0, 0,
    0, 1, 1, 1, 0, 1, 1, 1, 0, 0
};

//uncommons
int grasshopperSolution[144] = {
    0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 
    0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 
    0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1,
    0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 
    1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1,
    1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 
    1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1,
    0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0,
    1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0,
    0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0,
    0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1
};

int stagBeetleSolution[144] = {
    0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0,
    0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0,
    0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0,
    0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0,
    0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 
    1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0,
    1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0,
    0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0
};

int shieldBugSolution[144] = {
    1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0,
    1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 
    1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0,
    0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0,
    0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0,
    1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0,
    1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0
};

int dragonHeadedCatepillarSolution[144] = {
    0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0,
    1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0,
    1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0,
    1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0,
    0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0,
    0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0,
    0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0,
    1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0,
    0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1
};

//rares
int acornWeevilSolution[196] = {
    1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 
    1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1,
    1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0,
    1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0,
    1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1,
    1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0,
    1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0,
    1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0,
    1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0,
    1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0,
    1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0,
    0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0
};

int rosyMapleMothSolution[196] = {
    0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0,
    0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0,
    0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0,
    1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0,
    1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1,
    0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1,
    1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1,
    0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1,
    1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1
};