#include "game.h"
#include "gba.h"
#include "sound.h"

//zone and power-up variables
int zoneMoved;
int powerUpX, powerUpY, powerActivated;

//begin game 
void initializeGame(){
    //no shoot zone
    zoneX = 50 + rand() % 100;
    zoneY = 40 + rand() % 100;
    zoneSize = 30;
    zoneMoved = 0;

    for(int i = 0; i < BULLET_COUNT; i++){
        bullets[i].active = 0;
    }

    for(int i = 0; i < ENEMY_COUNT; i++){
        enemies[i].active = 0;
    }

    //player info
    playerPtr = &p;
    p.oldX = 100;
    p.oldY = 65;
    p.x = 100;
    p.y = 65;
    p.backgroundColor = BACKGROUND;
    p.color = RGB(15, 0, 20);
    p.ableToShoot = 1;
    p.velocity = 1;

    powerActivated = 0;

    numPerSpawn = 2;
    numKilled = 0;
    maxOnBoard = 2;
    numOnBoard = 0;

    lives = 3;
    drawBackground();
}

//draws background (even when not restarting)
void drawBackground(){
    drawRectDMA(40, 0, 160, 160, BACKGROUND);
    drawString(2, 2, "Lives:", WHITE);
    drawRect(zoneX, zoneY, zoneSize, zoneSize, RED);
}

//spawns new enemies
void spawnEnemies() {
    int spawned = 0;
    if (numOnBoard < maxOnBoard){
        for(int i = 0; i < ENEMY_SIZE; i++){
            if(enemies[i].active == 0){
                initializeEnemy(&enemies[i]);
                numOnBoard++;
                spawned++;
                if(spawned == numPerSpawn){
                    break;
                }
            }
        }
    }
}

//skip variables to help with timing
int skipFrame = 0;
int skipFrame2 = 0;

//updates game conditions
void updateGame(){
    seed++;
    srand(seed);
    updatePlayer();
    //checks to stop long sound
    timeSoundPlays++;
    if (timeSoundPlays == 45){
        REG_SND2FREQ = SND_RESET;
        REG_SND2CNT = 0; 
    }
    //enemies update every 3 frames to move slow
    skipFrame++;
    if(skipFrame == 3){
        for (int i = 0; i < ENEMY_COUNT; i++){
            if(enemies[i].active){ 
                updateEnemy(&enemies[i]);
            }
        }
        skipFrame = 0;
    }
    //timing for spawn rates
    skipFrame2++;
    if(skipFrame2 == 8){
        spawnEnemies();
        skipFrame2 = 0;
    }
    //difficulty as game progresses
    if (numKilled <= 2){
        maxOnBoard = 2;
    } else if(numKilled <= 12){
        maxOnBoard = 6;
    } else if (numKilled <= 20){
        if(!zoneMoved){
            drawRectDMA(zoneX, zoneY, zoneSize, zoneSize, BACKGROUND);
            zoneX = 50 + rand() % 100;
            zoneY = 10 + rand() % 100;
            zoneMoved = 1;
            zoneSize = 35;
            seed += playerPtr->x;
            srand(seed);
            powerUpX = 50 + rand() % 100;
            powerUpY = 10 + rand() % 100;
            powerActivated = 1;
        }
        maxOnBoard = 12;
    } else if (numKilled <= 40){
        if(zoneMoved == 1){
            drawRectDMA(zoneX, zoneY, zoneSize, zoneSize, BACKGROUND);
            zoneX = 50 + rand() % 100;
            zoneY = 10 + rand() % 100;
            zoneMoved = 2;
            zoneSize = 40;
        }
    }
    //power-up collision
    if (powerActivated && collision(playerPtr->x, playerPtr->y, PLAYER_SIZE, PLAYER_SIZE, powerUpX, powerUpY, 5, 5)){
        powerActivated = 0;
        playerPtr->velocity *= 2; 
        drawRect(powerUpX, powerUpY, 5, 5, BACKGROUND);
    }
}

//draw game
void drawGame(){
    drawRectDMA(zoneX, zoneY, zoneSize, zoneSize, RED);
    drawPlayer();
    for (int i = 0; i < ENEMY_COUNT; i++){
        if(enemies[i].active){
            drawEnemy(&enemies[i]);
        }
    }
    for (int i = 0; i < lives; i++){
        drawRect(2 + (i * 12), 12, 10, 10, MAGENTA);
    }
    if (powerActivated){
        drawRect(powerUpX, powerUpY, 5, 5, BLUE);
    }
}