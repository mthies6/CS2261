#include "game.h"
#include "gba.h"
#include "mode4.h"
#include "alien.h"

Enemy enemies[ENEMY_COUNT];

//initializes enemies
void initializeEnemy(){
    int xVal = 0;
    int yVal = 0;
    for(int i = 0; i < ENEMY_COUNT; i++){
        if (xVal == 10){
            xVal = 0;
            yVal++;
        }
        enemies[i].active = 1;
        enemies[i].x = 42 + xVal * 16;
        enemies[i].y = 10 + yVal * 16; 
        xVal++;
    }
}

int skipFrame = 0;

//update enemy position
void updateEnemy(){
    int lowestEnemyY = 0;
    skipFrame++;
    if (skipFrame == 20) {
        for(int i = 0; i < ENEMY_COUNT; i++){
            if (enemies[i].active){
                enemies[i].x += 2;
            }
        }
    } else if (skipFrame == 40){
        for(int i = 0; i < ENEMY_COUNT; i++){
            if (enemies[i].active){
                enemies[i].x -= 2;
            }
        }
    } else if (skipFrame == 60){
        for(int i = 0; i < ENEMY_COUNT; i++){
            if (enemies[i].active){
                enemies[i].x -= 2;
            }
        }
    } else if (skipFrame == 80){
        for(int i = 0; i < ENEMY_COUNT; i++){
            if (enemies[i].active){
                enemies[i].x +=2;
            }
        }
    } else if (skipFrame == 100){
        for(int i = 0; i < ENEMY_COUNT; i++){
            if (enemies[i].active){
                enemies[i].y += 5;
            }
            if (enemies[i].y > lowestEnemyY){
                lowestEnemyY = enemies[i].y;
            }
        }
        skipFrame = 0;
        lowestY = lowestEnemyY + ENEMY_SIZE;
    }

}

//draws updated enemy location
void drawEnemy(){
    for(int i = 0; i < ENEMY_COUNT; i++){
        if (enemies[i].active){
            drawImage4(enemies[i].x, enemies[i].y, ENEMY_SIZE, ENEMY_SIZE, alienBitmap);
        }
    }
}

//shoot for enemies
void antiBullet(Bullet *b, int x, int y){
    b->active = 1;
    b->velocity = 2;
    b->x = x + ENEMY_SIZE/2;
    b->y = y;
}