#include "game.h"
#include "gba.h"
#define ENEMY_COLOR RGB(0,16,0)


Enemy enemies[ENEMY_COUNT];

//initializes enemies to be spawned
void initializeEnemy(Enemy *enemyPtr){
    enemyPtr->active = 1;
    if ((rand() % 2) & 1){
        enemyPtr->oldX = 190;
        enemyPtr->x = 190;
    } else {
        enemyPtr->oldX = 40;
        enemyPtr->x = 40;
    }
    int randomOffset = (((rand() % 20) - 10) * 10);
    enemyPtr->oldY = 70 + randomOffset;
    enemyPtr->y = 70 + randomOffset;
}

//update enemy position
void updateEnemy(Enemy* enemyPtr){
    enemyPtr->oldX = enemyPtr->x;
    enemyPtr->oldY = enemyPtr->y;
    if (playerPtr->x < enemyPtr->x){
        enemyPtr->x -= 1;
    }
    if (playerPtr->x > enemyPtr->x){
        enemyPtr->x += 1;
    }
    if (playerPtr->y < enemyPtr->y){
        enemyPtr->y -= 1;
    }
    if (playerPtr->y > enemyPtr->y){
        enemyPtr->y += 1;
    }
}

//draws new enemy location and erases old
void drawEnemy(Enemy* enemyPtr){
    drawRect(enemyPtr->oldX, enemyPtr->oldY, ENEMY_SIZE, ENEMY_SIZE, BACKGROUND);
    drawRect(enemyPtr->x, enemyPtr->y, ENEMY_SIZE, ENEMY_SIZE, ENEMY_COLOR);
}