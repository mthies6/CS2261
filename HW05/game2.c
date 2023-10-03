#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "tileset.h"
#include "spritesheet.h"
#include "game.h"
#include "collision1.h"
#include "print.h"
#include "time.h"
#include "level2Map.h"
#include "overlay.h"

int randomIndex;

//enemy location options
int xEnemySpawn2[15] = {21, 42, 13, 21, 4, 45, 24, 48, 53, 35, 11, 19, 45, 58, 4};
int yEnemySpawn2[15] = {8, 9, 12, 17, 23, 22, 31, 31, 30, 31, 40, 46, 43, 44, 46};

//rock location options
int xRockSpawn2[15] = {6, 35, 52, 20, 10, 30, 48, 19, 39, 10, 50, 17, 45, 9, 36};
int yRockSpawn2[15] = {11, 11, 10, 26, 34, 33, 36, 40, 39, 49, 46, 17, 18, 23, 22};

//flag location options
int xFlagSpawn2[20] = {53, 43, 14, 21, 57, 34, 4, 27, 53, 11, 40, 59, 25, 4, 36, 46, 11, 17, 45, 59};
int yFlagSpawn2[20] = {4, 6, 5, 13, 14, 18, 17, 23, 23, 31, 33, 36, 36, 38, 43, 38, 47, 54, 49, 53};

void initializeGame2(){
    //set up random
    srand(seed);
    randomIndex = rand();

    //hide sprites
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

    //initialize all pools
    initializeEnemies();
    initializeRocks();
    initializeFlags();

    //replace bg with level 2
    DMANow(3, level2MapMap, &SCREENBLOCK[28], level2MapMapLen/2);
    DMANow(3, overlayMap, &SCREENBLOCK[27], overlayMapLen/2);

    //initialize player
    fuel = 100;
    player.x = 248;
    player.y = 464;
    player.direction = rand() % 4;
    player.framesPassed = 20;
    player.xDel = 2;
    player.yDel = 2;
    player.aniFrame = 1;
    player.aniState = 1;
    flagsCollected = 0;
    lives = 3; 
    playerSpawnX = player.x;
    playerSpawnY = player.y;
}