# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
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
# 2 "game.c" 2
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
# 3 "game.c" 2
# 1 "rocket2.h" 1
# 21 "rocket2.h"
extern const unsigned short rocket2Bitmap[72];


extern const unsigned short rocket2Pal[256];
# 4 "game.c" 2
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
# 5 "game.c" 2
# 1 "alien.h" 1
# 21 "alien.h"
extern const unsigned short alienBitmap[72];


extern const unsigned short alienPal[256];
# 6 "game.c" 2

char buffer[20];
char buffer2[20];
int seed;


void initializeGame(){
    seed++;
    srand(seed);
    gameStarted = 1;
    score = 0;

    p1.x = 80;
    p1.y = 120;
    p1.velocity = 1;

    DMANow(3, rocket2Pal, ((unsigned short *)0x5000000), 256);
    ((unsigned short *)0x5000000)[48] = (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10);


    for(int i = 0; i < 10; i++){
        bullets[i].active = 0;
    }

    initializeEnemy();
    lowestY = 58;
}


void updateGame(){
    if (lowestY >= p1.y){
        lost = 1;
    }
    updatePlayer();
    updateEnemy();
}


void drawGame(){
    fillScreen4(0);
    drawPlayer();
    drawEnemy();
    drawString4(170, 2, "Score:", 8);
    sprintf(buffer, "%d", score);
    drawString4(210, 2, buffer, 8);
}
