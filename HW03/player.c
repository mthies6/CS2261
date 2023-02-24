#include "game.h"
#include "gba.h"
#include "sound.h"

//prototypes
void shootRight();
void shootLeft();
void updateBullet();
void drawBullet();
void checkBulletCollision(Bullet *b);

//assign bullet pool
Bullet bullets[BULLET_COUNT];

//update player from input and collisions
void updatePlayer(){
    if(BUTTON_HELD(BUTTON_DOWN) && (playerPtr->y < 150)) {
        playerPtr->oldX = playerPtr->x;
        playerPtr->oldY = playerPtr->y;
        playerPtr->y += playerPtr->velocity;
    } else if(BUTTON_HELD(BUTTON_UP) && (playerPtr->y > 2)) {
        playerPtr->oldX = playerPtr->x;
        playerPtr->oldY = playerPtr->y;
        playerPtr->y -= playerPtr->velocity;
    } else if(BUTTON_HELD(BUTTON_RIGHT)&& (playerPtr->x < 190)) {
        playerPtr->oldX = playerPtr->x;
        playerPtr->oldY = playerPtr->y;
        playerPtr->x += playerPtr->velocity;
    } else if(BUTTON_HELD(BUTTON_LEFT) && (playerPtr->x > 42)) {
        playerPtr->oldX = playerPtr->x;
        playerPtr->oldY = playerPtr->y;
        playerPtr->x -= playerPtr->velocity;
    }
    if (BUTTON_PRESSED(BUTTON_A) && playerPtr->ableToShoot) {
        //shoot right
        shootRight();
    }
    if (BUTTON_PRESSED(BUTTON_B) && playerPtr->ableToShoot) {
        //shoot left
        shootLeft();
    }
    for (int i = 0; i < ENEMY_COUNT; i++){
        if(enemies[i].active){
            if(collision(playerPtr->x, playerPtr->y, PLAYER_SIZE, PLAYER_SIZE, enemies[i].x, enemies[i].y, ENEMY_SIZE, ENEMY_SIZE)){
                timeSoundPlays = 0;
                drawRect(enemies[i].x, enemies[i].y, ENEMY_SIZE, ENEMY_SIZE, BACKGROUND);
                drawRect(2, 12, 35, 10, BLACK);
                lives--;
                enemies[i].active = 0;
                numOnBoard--;
                REG_SND2CNT = DMG_ENV_VOL(5) | DMG_STEP_TIME(0);
                REG_SND2FREQ = SND_RESET | NOTE_D5;
            }
        }
    
    }
    if (playerPtr->x > zoneX && playerPtr->x < zoneX+zoneSize && playerPtr->y > zoneY && playerPtr->y < zoneY+zoneSize){
        playerPtr->color = WHITE;
        playerPtr->ableToShoot = 0;
    } else {
        playerPtr->color = MAGENTA;
        playerPtr->ableToShoot = 1;
    }
    updateBullet();
}

//redraw player position
void drawPlayer(){
    drawRect(playerPtr->oldX, playerPtr->oldY, PLAYER_SIZE, PLAYER_SIZE, playerPtr->backgroundColor);
    drawRect(playerPtr->x, playerPtr->y, PLAYER_SIZE, PLAYER_SIZE, playerPtr->color);
    drawBullet();
}

//shoot bullet to the right
void shootRight(){
    for (int i = 0; i < BULLET_COUNT; i++){
        if(bullets[i].active == 0){
            bullets[i].active = 1;
            bullets[i].x = playerPtr->x + PLAYER_SIZE;
            bullets[i].y = playerPtr->y + (PLAYER_SIZE/2);
            bullets[i].oldX = playerPtr->x + PLAYER_SIZE;
            bullets[i].velocity = 2;
            break;
        }
    }
}

//shoot bullet to the left
void shootLeft(){
    for (int i = 0; i < BULLET_COUNT; i++){
        if(bullets[i].active == 0){
            bullets[i].active = 1;
            bullets[i].x = playerPtr->x;
            bullets[i].y = playerPtr->y + (PLAYER_SIZE/2);
            bullets[i].oldX = playerPtr->x;
            bullets[i].velocity = -2;
            break;
        }
    }
}

//update bullet position
void updateBullet(){
    for(int i = 0; i < BULLET_COUNT; i++){
        if(bullets[i].active){
            if(bullets[i].x > 196 || bullets[i].x < 43){
                bullets[i].active = 0;
                drawRect(bullets[i].x, bullets[i].y, 2, 1, BACKGROUND);
                break;
            }
            checkBulletCollision(&bullets[i]);
            bullets[i].oldX = bullets[i].x;
            bullets[i].x += bullets[i].velocity;
        }
    }
}

//draw new bullet position and erase old
void drawBullet(){
    for(int i = 0; i < BULLET_COUNT; i++) {
        if(bullets[i].active){
            drawRect(bullets[i].oldX, bullets[i].y, 2, 1, BACKGROUND);
            drawRect(bullets[i].x, bullets[i].y, 2, 1, WHITE);
        }
    }
}

//check if bullet collided with any active enemies
void checkBulletCollision(Bullet *b){
    for(int i = 0; i < ENEMY_COUNT; i++){
        if(enemies[i].active){
            if(collision(b->x, b->y, 2, 1, enemies[i].x, enemies[i].y, ENEMY_SIZE, ENEMY_SIZE)){
                enemies[i].active = 0;
                b->active = 0;
                REG_SND2CNT = DMG_ENV_VOL(5) | DMG_STEP_TIME(3);
                REG_SND2FREQ = DMG_FREQ_TIMED | SND_RESET | NOTE_B3;
                drawRect(enemies[i].x, enemies[i].y, ENEMY_SIZE, ENEMY_SIZE, BACKGROUND);
                drawRect(b->x, b->y, 2, 1, BACKGROUND);
                numKilled++;
                numOnBoard--;
                break;
            }
        }
    }
}