# 1 "enemy.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "enemy.c"
# 1 "game.h" 1

typedef struct {
    int x;
    int y;
    unsigned short backgroundColor;
    unsigned short color;
    int ableToShoot;
    int velocity;
} Player;


typedef struct {
    int x;
    int y;
    int active;
} Enemy;


typedef struct {
    int x;
    int y;
    int active;
    int velocity;
} Bullet;


void drawBackground();
void initializeGame();
void updateGame();
void drawGame();
void updatePlayer();
void drawPlayer();
void updateEnemy();
void drawEnemy();
void initializeEnemy();
void antiBullet(Bullet *b, int x, int y);




Player p1;




extern Enemy enemies[40];




extern Bullet bullets[10];


int gameStarted, score, lost, lowestY;
# 2 "enemy.c" 2
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;






extern volatile unsigned short *videoBuffer;
# 37 "gba.h"
void waitForVBlank();
# 54 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 70 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 102 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 3 "enemy.c" 2
# 1 "mode4.h" 1
# 10 "mode4.h"
void flipPage();
void setPixel4(int x, int y, unsigned char colorIndex);
void drawRect4(int x, int y, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int x, int y, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);
void drawChar4(int x, int y, char ch, unsigned char colorIndex);
void drawString4(int x, int y, char *str, unsigned char colorIndex);
# 4 "enemy.c" 2
# 1 "alien.h" 1
# 21 "alien.h"
extern const unsigned short alienBitmap[72];


extern const unsigned short alienPal[256];
# 5 "enemy.c" 2

Enemy enemies[40];


void initializeEnemy(){
    int xVal = 0;
    int yVal = 0;
    for(int i = 0; i < 40; i++){
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


void updateEnemy(){
    int lowestEnemyY = 0;
    skipFrame++;
    if (skipFrame == 20) {
        for(int i = 0; i < 40; i++){
            if (enemies[i].active){
                enemies[i].x += 2;
            }
        }
    } else if (skipFrame == 40){
        for(int i = 0; i < 40; i++){
            if (enemies[i].active){
                enemies[i].x -= 2;
            }
        }
    } else if (skipFrame == 60){
        for(int i = 0; i < 40; i++){
            if (enemies[i].active){
                enemies[i].x -= 2;
            }
        }
    } else if (skipFrame == 80){
        for(int i = 0; i < 40; i++){
            if (enemies[i].active){
                enemies[i].x +=2;
            }
        }
    } else if (skipFrame == 100){
        for(int i = 0; i < 40; i++){
            if (enemies[i].active){
                enemies[i].y += 5;
            }
            if (enemies[i].y > lowestEnemyY){
                lowestEnemyY = enemies[i].y;
            }
        }
        skipFrame = 0;
        lowestY = lowestEnemyY + 12;
    }

}


void drawEnemy(){
    for(int i = 0; i < 40; i++){
        if (enemies[i].active){
            drawImage4(enemies[i].x, enemies[i].y, 12, 12, alienBitmap);
        }
    }
}


void antiBullet(Bullet *b, int x, int y){
    b->active = 1;
    b->velocity = 2;
    b->x = x + 12/2;
    b->y = y;
}
