#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "tileset.h"
#include "level1Map.h"
#include "spritesheet.h"
#include "game.h"
#include "collision1.h"
#include "collision2.h"
#include "print.h"
#include "time.h"
#include "overlayTileSet.h"
#include "overlay.h"

//enemy location options
int xEnemySpawn[15] = {4, 12, 46, 58, 15, 7, 30, 21, 33, 41, 30, 49, 49, 4, 57};
int yEnemySpawn[15] = {4, 11, 12, 4, 22, 34, 27, 33, 34, 22, 13, 22, 35, 25, 28};

//rock location options
int xRockSpawn[15] = {10, 38, 49, 26, 7, 47, 26, 9, 20, 9, 16, 41, 38, 55, 50};
int yRockSpawn[15] = {6, 8, 17, 17, 13, 30, 33, 37, 41, 48, 54, 39, 46, 42, 50};

//flag location options
int xFlagSpawn[20] = {18, 39, 15, 58, 44, 4, 30, 17, 41, 59, 22, 11, 42, 59, 33, 10, 47, 23, 54, 17};
int yFlagSpawn[20] = {4, 5, 10, 11, 12, 15, 17, 25, 26, 48, 30, 34, 35, 35, 40, 43, 44, 45, 51, 52};

int hOff;
int vOff;

//indices for special/lucky flags + random locations for other sprites
int randomIndex;
int specialIndex;
int luckyIndex;

//collision map check
unsigned char colorAt(int x, int y){
    if (level == 1) {return ((unsigned char *)collision1Bitmap)[OFFSET(x, y, 512)];}
    else {return ((unsigned char *)collision2Bitmap)[OFFSET(x, y, 512)];}
}

//set up game 
void initializeGame1(){
    score = 0;
    flagsCollected = 0;

    srand(seed);
    randomIndex = rand();

    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

    //initialize all non-player sprites
    initializeEnemies();
    initializeRocks();
    initializeFlags();

    //set up correct background maps
    DMANow(3, level1MapMap, &SCREENBLOCK[28], level1MapMapLen/2);
    DMANow(3, overlayMap, &SCREENBLOCK[27], overlayMapLen/2);

    //initialize player
    fuel = 100;
    player.width = 16;
    player.height = 16;
    player.x = 248;
    player.y = 464;
    player.numFrames = 3;
    player.direction = rand() % 4;
    player.framesPassed = 20;
    player.xDel = 2;
    player.yDel = 2;
    player.aniFrame = 1;
    player.aniState = 1;
    lives = 3; 
    playerSpawnX = player.x;
    playerSpawnY = player.y;
}

void initializeEnemies(){
    for (int i = 0; i < ENEMY_COUNT; i++) {
        int random = rand();
        enemyPool[i].aniState = 1;
        enemyPool[i].aniFrame = 0;
        enemyPool[i].direction = random % 4;
        enemyPool[i].framesPassed = 20;
        enemyPool[i].height = 16;
        enemyPool[i].hide = 0;
        enemyPool[i].numFrames = 3;
        enemyPool[i].width = 16;
        enemyPool[i].xDel = 2;
        enemyPool[i].yDel = 2;
        if (level == 1){
            enemyPool[i].x = xEnemySpawn[(randomIndex + (5*i)) % 15] * 8;
            enemyPool[i].y = yEnemySpawn[(randomIndex + (5*i)) % 15] * 8;
        } else {
            enemyPool[i].x = xEnemySpawn2[(randomIndex + (5*i)) % 15] * 8;
            enemyPool[i].y = yEnemySpawn2[(randomIndex + (5*i)) % 15] * 8;
        }
    }
}

void initializeRocks(){
    for (int i = 0; i < ROCK_COUNT; i++) {
        int random = rand();
        rockPool[i].height = 24;
        rockPool[i].width = 24;
        if (level == 1){
            rockPool[i].x = xRockSpawn[(randomIndex + (5*i)) % 15] * 8;
            rockPool[i].y = yRockSpawn[(randomIndex + (5*i)) % 15] * 8;
        } else {
            rockPool[i].x = xRockSpawn2[(randomIndex + (5*i)) % 15] * 8;
            rockPool[i].y = yRockSpawn2[(randomIndex + (5*i)) % 15] * 8;
        }
    }
}

void initializeFlags(){
    specialIndex = rand() % 10;
    luckyIndex = rand() % 10;
    mgba_printf("special: %d, lucky: %d", specialIndex, luckyIndex);
    for (int i = 0; i < FLAG_COUNT; i++) {
        int random = rand();
        flagPool[i].height = 8;
        flagPool[i].width = 16;
        flagPool[i].hide = 0;
        if (level == 1){
            flagPool[i].x = xFlagSpawn[(randomIndex + (2*i)) % 20] * 8;
            flagPool[i].y = yFlagSpawn[(randomIndex + (2*i)) % 20] * 8;
        } else {
            flagPool[i].x = xFlagSpawn2[(randomIndex + (2*i)) % 20] * 8;
            flagPool[i].y = yFlagSpawn2[(randomIndex + (2*i)) % 20] * 8;
        }

        //special flags
        if (i == specialIndex){
            //make sure they're not the same flag
            if (luckyIndex == specialIndex){
                luckyIndex = (luckyIndex++) % 10;
            }
            flagPool[i].special = 1;
        } else if (i == luckyIndex){
            flagPool[i].lucky = 1;
        } else {
            flagPool[i].lucky = 0;
            flagPool[i].special = 0;
        }
    }
}

void updateGame(){
    for (int i = 0; i < ENEMY_COUNT; i++){
        updateEnemy(&enemyPool[i]);
    }
    updatePlayer();

    //set up screen based on player location
    hOff = player.x - (SCREENWIDTH - player.width)/2;
    vOff = player.y - (SCREENHEIGHT - player.height)/2;

    if (player.x < 0) player.x = 0;
    if (player.y < 0) player.y = 0;
    if (player.x > 512 - player.width) player.x = 512 - player.width;
    if (player.y > 512 - player.height) player.y = 512 - player.height;

    if (hOff < 0) hOff = 0;
    if (vOff < 0) vOff = 0;
    if (hOff > 512 - SCREENWIDTH) hOff = 512 - SCREENWIDTH;
    if (vOff > 512 - SCREENHEIGHT) vOff = 512 - SCREENHEIGHT;

    //input player sprite info to shadow OAM
    shadowOAM[0].attr0 = ATTR0_SQUARE | ATTR0_Y(player.y - vOff) | ATTR0_REGULAR;
    shadowOAM[0].attr1 = ATTR1_SMALL | ATTR1_X(player.x - hOff);
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.direction * 2, player.aniFrame * 2) | ATTR2_PRIORITY(1);

    //enemy info to shadown OAM
    for (int i = 0; i < ENEMY_COUNT; i++){
        if (enemyPool[i].y + enemyPool[i].height > vOff && enemyPool[i].y < SCREENHEIGHT + vOff){
            shadowOAM[i+1].attr0 = ATTR0_SQUARE | ATTR0_Y(enemyPool[i].y - vOff) | ATTR0_REGULAR;
            shadowOAM[i+1].attr1 = ATTR1_SMALL | ATTR1_X(enemyPool[i].x - hOff);
            shadowOAM[i+1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemyPool[i].direction * 2 + 8, enemyPool[i].aniFrame * 2) | ATTR2_PRIORITY(1);
        } else {
            shadowOAM[i+1].attr0 = ATTR0_HIDE;
        }
    }

    //smoke info to shadow OAM
    if (smokeFrame == 0 || smokeFrame == 120){
        shadowOAM[4].attr0 = ATTR0_HIDE;
        smokeFrame = 120; 
    } else {
        smokeFrame--;
        shadowOAM[4].attr0 = ATTR0_SQUARE | ATTR0_Y(smoke.y - vOff) | ATTR0_REGULAR;
        shadowOAM[4].attr1 = ATTR1_MEDIUM | ATTR1_X(smoke.x - hOff);
        shadowOAM[4].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(20, 0);
    }

    //rock info to shadow OAM
    for (int i = 0; i < ROCK_COUNT; i++){
        if(collision(player.x, player.y, player.width, player.height, rockPool[i].x, rockPool[i].y, rockPool[i].width, rockPool[i].height)){
                collisionOccurred();
            }
        if (rockPool[i].y + rockPool[i].height > vOff && rockPool[i].y < SCREENHEIGHT + vOff){
            shadowOAM[i+5].attr0 = ATTR0_SQUARE | ATTR0_Y(rockPool[i].y - vOff) | ATTR0_REGULAR;
            shadowOAM[i+5].attr1 = ATTR1_MEDIUM | ATTR1_X(rockPool[i].x - hOff);
            shadowOAM[i+5].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(16, 0) | ATTR2_PRIORITY(1);
        } else {
            shadowOAM[i+5].attr0 = ATTR0_HIDE;
        }
    }

    //flag info to shadow OAM
    for (int i = 0; i < FLAG_COUNT; i++){
        if (flagPool[i].y + flagPool[i].height > vOff && flagPool[i].y < SCREENHEIGHT + vOff && !(flagPool[i].hide)){
            if(collision(player.x, player.y, player.width, player.height, flagPool[i].x, flagPool[i].y, flagPool[i].width, flagPool[i].height)){
                flagsCollected++;
                flagPool[i].hide = 1;
                
                //special flags
                if (flagPool[i].lucky){
                    score += (fuel * 10 * level);
                } else if (flagPool[specialIndex].hide){
                    score += 200;
                } else {
                    score += 100;
                }
            }
            shadowOAM[i+8].attr0 = ATTR0_TALL | ATTR0_Y(flagPool[i].y - vOff) | ATTR0_REGULAR;
            shadowOAM[i+8].attr1 = ATTR1_TINY | ATTR1_X(flagPool[i].x - hOff);
            shadowOAM[i+8].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(30 - flagPool[i].special - (2*flagPool[i].lucky), 0) | ATTR2_PRIORITY(1);
        } else {
            shadowOAM[i+8].attr0 = ATTR0_HIDE;
        }
    }
}

void updatePlayer(){
    //update overlay player info
    updateFuel();
    updateScore();
    updateLives();

    //player corners
    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;

    //user input for movement
    if (BUTTON_HELD(BUTTON_UP)) {
        player.direction = UP;
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        player.direction = DOWN;
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.direction = LEFT;
        
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        player.direction = RIGHT;
    }
    if(BUTTON_PRESSED(BUTTON_A) && smokeFrame == 120){
        releaseSmoke(player.x, player.y, player.direction);
    }

    //check collision map
    for (int i = 0; i < player.xDel; i++){
        switch (player.direction){
            case(DOWN):
                if (colorAt(leftX, bottomY + 1) && colorAt(rightX, bottomY + 1)) player.y+=1;
                break;
            case(UP):
                if (colorAt(leftX, topY - 1) && colorAt(rightX, topY - 1)) player.y-=1;
                break;
            case (RIGHT):
                if (colorAt(rightX + 1, bottomY) && colorAt(rightX + 1, topY)) player.x+=1;
                break;
            case (LEFT):
                if (colorAt(leftX - 1, bottomY) && colorAt(leftX - 1, topY)) player.x-=1;
                break;
        }
    }

    //player sprite animation
    if (player.aniState) {
        player.framesPassed--;
        if (player.framesPassed == 0){
                player.framesPassed = 20;
                player.aniFrame = (player.aniFrame + 1) % player.numFrames;
        }
    } else {
        player.aniFrame = 0;
        player.framesPassed = 10;
    }
}

void updateEnemy(SPRITE *enemyPtr){
    if (collision(player.x, player.y, player.width, player.height, enemyPtr->x, enemyPtr->y, enemyPtr->width, enemyPtr->height)){
        //for testing other functionality requirements, may want to comment the next line out. i accidentally made the game super hard
        collisionOccurred();
    }

    //smoke conditions
    if (smokeFrame == 120 || smokeFrame == 0){
        enemyPtr->xDel = 2;
        enemyPtr->yDel = 2;
    } else if (collision(enemyPtr->x, enemyPtr->y, enemyPtr->width, enemyPtr->height, smoke.x, smoke.y, 24, 24)){
        enemyPtr->xDel = 0;
        enemyPtr->yDel = 0;
    } 

    //enemy corners
    int leftX = enemyPtr->x;
    int rightX = enemyPtr->x + enemyPtr->width - 1;
    int topY = enemyPtr->y;
    int bottomY = enemyPtr->y + enemyPtr->height - 1;

    //compare player for chase mechanic + check collision 
    if (player.x < enemyPtr->x && colorAt(leftX - enemyPtr->xDel, bottomY) && colorAt(leftX - enemyPtr->xDel, topY)){
        enemyPtr->direction = LEFT;
        enemyPtr->x -= enemyPtr->xDel;
    }
    else if (player.x > enemyPtr->x && colorAt(rightX + enemyPtr->xDel, bottomY) && colorAt(rightX + enemyPtr->xDel, topY)){
        enemyPtr->direction = RIGHT;
        enemyPtr->x += enemyPtr->xDel;
    }
    else if (player.y < enemyPtr->y && colorAt(leftX, topY - enemyPtr->yDel) && colorAt(rightX, topY - enemyPtr->yDel)){
        enemyPtr->direction = UP;
        enemyPtr->y -= enemyPtr->yDel;
    }
    else if (player.y > enemyPtr->y && colorAt(leftX, bottomY + enemyPtr->yDel) && colorAt(rightX, bottomY + enemyPtr->yDel)){
        enemyPtr->direction = DOWN;
        enemyPtr->y += enemyPtr->yDel;
    }

    //animation
    enemyPtr->framesPassed--;
    if (enemyPtr->framesPassed == 0){
            enemyPtr->framesPassed = 20;
            enemyPtr->aniFrame = (enemyPtr->aniFrame + 1) % enemyPtr->numFrames;
    }
}

void updateFuel(){
    //lower fuel by moving
    moved++;
    if (moved == 60){
        fuel--;
        moved = 0;
    }

    //run time change for fuel visual
    if (fuel > 90){
    } else if (fuel > 80 ){
        //look like 9 full
        SCREENBLOCK[27].tilemap[OFFSET(21, 3, 32)] = OFFSET(0, 3, 32);
    } else if (fuel > 70) {
        //look like 8 full
        SCREENBLOCK[27].tilemap[OFFSET(22, 3, 32)] = OFFSET(1, 3, 32);
    } else if (fuel > 60){
        //look like 7 full
        SCREENBLOCK[27].tilemap[OFFSET(22, 3, 32)] = OFFSET(1, 4, 32);
        SCREENBLOCK[27].tilemap[OFFSET(23, 3, 32)] = OFFSET(2, 3, 32);
    } else if (fuel > 50){
        //look like 6 full
        SCREENBLOCK[27].tilemap[OFFSET(23, 3, 32)] = OFFSET(2, 4, 32);
        SCREENBLOCK[27].tilemap[OFFSET(24, 3, 32)] = OFFSET(3, 3, 32);
    } else if (fuel > 40){
        //look like 5 full
        SCREENBLOCK[27].tilemap[OFFSET(24, 3, 32)] = OFFSET(3, 4, 32);
    } else if (fuel > 30){
        //look like 4
        SCREENBLOCK[27].tilemap[OFFSET(25, 3, 32)] = OFFSET(4, 3, 32);
    } else if (fuel > 20){
        //look like 3
        SCREENBLOCK[27].tilemap[OFFSET(25, 3, 32)] = OFFSET(4, 4, 32);
        SCREENBLOCK[27].tilemap[OFFSET(26, 3, 32)] = OFFSET(5, 3, 32);
    } else if (fuel > 10){
        //look like 2
        SCREENBLOCK[27].tilemap[OFFSET(26, 3, 32)] = OFFSET(5, 4, 32);
        SCREENBLOCK[27].tilemap[OFFSET(27, 3, 32)] = OFFSET(6, 3, 32);
    } else if (fuel > 0){
        //look like 1
        SCREENBLOCK[27].tilemap[OFFSET(27, 3, 32)] = OFFSET(6, 4, 32);
    }
}

void updateScore(){
    //runtime change for score visual
    int tens = (score % 100)/10;
    int hundreds = (score % 1000)/100;
    int thousands = (score % 10000)/1000;
    SCREENBLOCK[27].tilemap[OFFSET(25, 1, 32)] = thousands + 15; // thousands
    SCREENBLOCK[27].tilemap[OFFSET(26, 1, 32)] = hundreds + 15; // hundreds
    SCREENBLOCK[27].tilemap[OFFSET(27, 1, 32)] = tens + 15; // tens
}

void updateLives(){
    //runtime change for lives visual
    SCREENBLOCK[27].tilemap[OFFSET(7, 18, 32)] = lives + 15;
}


void releaseSmoke(int x, int y, int direction){
    fuel -= 10;
    smokeFrame--;

    //which position the smoke should be in (if it exited from the back of the player)
    switch (direction){
        case(UP):
            smoke.x = x;
            smoke.y = y+16;
            break;
        case(DOWN):
            smoke.x = x;
            smoke.y = y-24;
            break;
        case (LEFT):
            smoke.x = x+16;
            smoke.y = y;
            break;
        case (RIGHT):
            smoke.x = x-24;
            smoke.y = y;
            break;
    }
}

//car collided with enemy/rock
void collisionOccurred(){
    lives--;
    player.x = playerSpawnX;
    player.y = playerSpawnY;
}

//draw changes
void drawGame(){
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;

    DMANow(3, shadowOAM, OAM, 128*4);
}