#include "game.h"
#include "gba.h"
#include "mode4.h"
#include "rocket.h"
#include "rocket2.h"
#include "sound.h"

//prototypes
void shoot();
void updateBullet();
void drawBullet();
void checkBulletCollision();
void antiBullet();

Bullet bullets[BULLET_COUNT];

//vars for dodge + cooldown
int coolDown = 0;
int dodging = 0;

//update player from user inputs
void updatePlayer(){
    coolDown++;
    if (coolDown == 150){
        dodging = 0;
    }
    if (BUTTON_PRESSED(BUTTON_LSHOULDER) && coolDown >= 300){
        dodging = 1;
        coolDown = 0;
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        shoot();
    }
    if(BUTTON_HELD(BUTTON_RIGHT)&& (p1.x < 190)) {
        p1.x += p1.velocity;
    }if(BUTTON_HELD(BUTTON_LEFT) && (p1.x > 42)) {
        p1.x -= p1.velocity;
    }
    updateBullet();
}

//draw updated player
void drawPlayer(){
    if (dodging){
        drawImage4(p1.x, p1.y, PLAYER_SIZE, PLAYER_SIZE, rocket2Bitmap); 
    } else {
        drawImage4(p1.x, p1.y, PLAYER_SIZE, PLAYER_SIZE, rocketBitmap); 
    }
    drawBullet();
}

//shoot bullet
void shoot(){
    for (int i = 0; i < BULLET_COUNT; i++){
        if(bullets[i].active == 0){
            bullets[i].active = 1;
            bullets[i].x = p1.x + PLAYER_SIZE/2 - 1;
            bullets[i].y = p1.y;
            bullets[i].velocity = -2;
            break;
        }
    }
}

//update bullet position
void updateBullet(){
    for(int i = 0; i < BULLET_COUNT; i++){
        if(bullets[i].active){
            if(bullets[i].y < 10 || bullets[i].y > 140){
                bullets[i].active = 0;
                break;
            }
            checkBulletCollision(&bullets[i]);
            bullets[i].y += bullets[i].velocity;
        }
    }
}

//draw new bullet position
void drawBullet(){
    for(int i = 0; i < BULLET_COUNT; i++) {
        if(bullets[i].active){
            drawRect4(bullets[i].x, bullets[i].y, 1, 2, 8);
        }
    }
}

//check if bullet collided with any active enemies or player
void checkBulletCollision(Bullet *b){
    for(int i = 0; i < ENEMY_COUNT; i++){
        if(enemies[i].active){
            if (!(dodging) && b->velocity > 0 && collision(b->x, b->y, 1, 2, p1.x, p1.y, PLAYER_SIZE, PLAYER_SIZE)){
                lost = 1;
            }
            if(collision(b->x, b->y, 1, 2, enemies[i].x, enemies[i].y, ENEMY_SIZE + 1, ENEMY_SIZE + 1)){
                enemies[i].active = 0;
                b->active = 0;
                int random = rand();
                if (random % 5 == 0){
                    antiBullet(b, enemies[i].x, enemies[i].y);
                }
                score += 10;
                REG_SND2CNT = DMG_ENV_VOL(5) | DMG_STEP_TIME(3);
                REG_SND2FREQ = DMG_FREQ_TIMED | SND_RESET | NOTE_C4;
                break;
            }
        }
    }
}
