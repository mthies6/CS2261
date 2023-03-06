# 1 "player.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "player.c"
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
# 2 "player.c" 2
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
# 3 "player.c" 2
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
# 4 "player.c" 2
# 1 "rocket.h" 1
# 21 "rocket.h"
extern const unsigned short rocketBitmap[72];


extern const unsigned short rocketPal[256];
# 5 "player.c" 2
# 1 "rocket2.h" 1
# 21 "rocket2.h"
extern const unsigned short rocket2Bitmap[72];


extern const unsigned short rocket2Pal[256];
# 6 "player.c" 2
# 1 "sound.h" 1
# 75 "sound.h"
enum {
  REST = 0,
  NOTE_C2 =44,
  NOTE_CS2 =157,
  NOTE_D2 =263,
  NOTE_DS2 =363,
  NOTE_E2 =457,
  NOTE_F2 =547,
  NOTE_FS2 =631,
  NOTE_G2 =711,
  NOTE_GS2 =786,
  NOTE_A2 =856,
  NOTE_AS2 =923,
  NOTE_B2 =986,
  NOTE_C3 =1046,
  NOTE_CS3 =1102,
  NOTE_D3 =1155,
  NOTE_DS3 =1205,
  NOTE_E3 =1253,
  NOTE_F3 =1297,
  NOTE_FS3 =1339,
  NOTE_G3 =1379,
  NOTE_GS3 =1417,
  NOTE_A3 =1452,
  NOTE_AS3 =1486,
  NOTE_B3 =1517,
  NOTE_C4 =1547,
  NOTE_CS4 =1575,
  NOTE_D4 =1602,
  NOTE_DS4 =1627,
  NOTE_E4 =1650,
  NOTE_F4 =1673,
  NOTE_FS4 =1694,
  NOTE_G4 =1714,
  NOTE_GS4 =1732,
  NOTE_A4 =1750,
  NOTE_AS4 =1767,
  NOTE_B4 =1783,
  NOTE_C5 =1798,
  NOTE_CS5 =1812,
  NOTE_D5 =1825,
  NOTE_DS5 =1837,
  NOTE_E5 =1849,
  NOTE_F5 =1860,
  NOTE_FS5 =1871,
  NOTE_G5 =1881,
  NOTE_GS5 =1890,
  NOTE_A5 =1899,
  NOTE_AS5 =1907,
  NOTE_B5 =1915,
  NOTE_C6 =1923,
  NOTE_CS6 =1930,
  NOTE_D6 =1936,
  NOTE_DS6 =1943,
  NOTE_E6 =1949,
  NOTE_F6 =1954,
  NOTE_FS6 =1959,
  NOTE_G6 =1964,
  NOTE_GS6 =1969,
  NOTE_A6 =1974,
  NOTE_AS6 =1978,
  NOTE_B6 =1982,
  NOTE_C7 =1985,
  NOTE_CS7 =1989,
  NOTE_D7 =1992,
  NOTE_DS7 =1995,
  NOTE_E7 =1998,
  NOTE_F7 =2001,
  NOTE_FS7 =2004,
  NOTE_G7 =2006,
  NOTE_GS7 =2009,
  NOTE_A7 =2011,
  NOTE_AS7 =2013,
  NOTE_B7 =2015,
  NOTE_C8 =2017
} NOTES;
# 7 "player.c" 2


void shoot();
void updateBullet();
void drawBullet();
void checkBulletCollision();
void antiBullet();

Bullet bullets[10];


int coolDown = 0;
int dodging = 0;


void updatePlayer(){
    coolDown++;
    if (coolDown == 150){
        dodging = 0;
    }
    if ((!(~(oldButtons) & ((1<<9))) && (~(buttons) & ((1<<9)))) && coolDown >= 300){
        dodging = 1;
        coolDown = 0;
    }
    if ((!(~(oldButtons) & ((1<<0))) && (~(buttons) & ((1<<0))))) {
        shoot();
    }
    if((~(buttons) & ((1<<4)))&& (p1.x < 190)) {
        p1.x += p1.velocity;
    }if((~(buttons) & ((1<<5))) && (p1.x > 42)) {
        p1.x -= p1.velocity;
    }
    updateBullet();
}


void drawPlayer(){
    if (dodging){
        drawImage4(p1.x, p1.y, 12, 12, rocket2Bitmap);
    } else {
        drawImage4(p1.x, p1.y, 12, 12, rocketBitmap);
    }
    drawBullet();
}


void shoot(){
    for (int i = 0; i < 10; i++){
        if(bullets[i].active == 0){
            bullets[i].active = 1;
            bullets[i].x = p1.x + 12/2 - 1;
            bullets[i].y = p1.y;
            bullets[i].velocity = -2;
            break;
        }
    }
}


void updateBullet(){
    for(int i = 0; i < 10; i++){
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


void drawBullet(){
    for(int i = 0; i < 10; i++) {
        if(bullets[i].active){
            drawRect4(bullets[i].x, bullets[i].y, 1, 2, 8);
        }
    }
}


void checkBulletCollision(Bullet *b){
    for(int i = 0; i < 40; i++){
        if(enemies[i].active){
            if (!(dodging) && b->velocity > 0 && collision(b->x, b->y, 1, 2, p1.x, p1.y, 12, 12)){
                lost = 1;
            }
            if(collision(b->x, b->y, 1, 2, enemies[i].x, enemies[i].y, 12 + 1, 12 + 1)){
                enemies[i].active = 0;
                b->active = 0;
                int random = rand();
                if (random % 5 == 0){
                    antiBullet(b, enemies[i].x, enemies[i].y);
                }
                score += 10;
                *(volatile u16*)0x04000068 = (((5) & 15) << 12) | (((3) & 7) << 8);
                *(volatile u16*)0x0400006C = (1<<14) | (1<<15) | NOTE_C4;
                break;
            }
        }
    }
}
