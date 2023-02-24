# 1 "enemy.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "enemy.c"
# 1 "game.h" 1

typedef struct {
    int oldX;
    int oldY;
    int x;
    int y;
    unsigned short backgroundColor;
    unsigned short color;
    int ableToShoot;
    int velocity;
} Player;


typedef struct {
    int oldX;
    int oldY;
    int x;
    int y;
    int active;
    int erased;
} Enemy;


typedef struct {
    int x;
    int y;
    int oldX;
    int active;
    int velocity;
} Bullet;


void initializeGame();
void updateGame();
void drawGame();
void initializeEnemy(Enemy *enemyPtr);
void updateEnemy(Enemy* enemyPtr);
void drawEnemy(Enemy* enemyPtr);
void updatePlayer();
void drawPlayer();
void spawnEnemies();
void drawBackground();




int lives, timeSoundPlays, gameStarted;
int zoneX, zoneY, zoneSize, seed;


Player p;
Player *playerPtr;




extern Enemy enemies[50];

int numKilled, numPerSpawn, numOnBoard, maxOnBoard;



extern Bullet bullets[20];
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
# 36 "gba.h"
void waitForVBlank();


int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 56 "gba.h"
void drawRect(int x, int y, int width, int height, volatile unsigned short color);
void drawRectDMA(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
void drawChar(int x, int y, char ch, unsigned short color);
void drawString(int x, int y, char *str, unsigned short color);
# 76 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 108 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 3 "enemy.c" 2



Enemy enemies[50];


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


void drawEnemy(Enemy* enemyPtr){
    drawRect(enemyPtr->oldX, enemyPtr->oldY, 8, 8, ((31&31) | (25&31) << 5 | (15&31) << 10));
    drawRect(enemyPtr->x, enemyPtr->y, 8, 8, ((0&31) | (16&31) << 5 | (0&31) << 10));
}
