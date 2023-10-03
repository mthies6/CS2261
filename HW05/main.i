# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 38 "gba.h"
void waitForVBlank();
# 55 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 71 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 103 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 2 "main.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct { u16 tileData[16]; } TILE;
typedef TILE charblock[512];



typedef struct {
 u16 tilemap[1024];
} screenblock;
# 3 "main.c" 2
# 1 "print.h" 1
# 25 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 4 "main.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 63 "sprites.h"
void hideSprites();


typedef struct {
    int x;
    int y;
    int xDel;
    int yDel;
    int width;
    int height;
    int framesPassed;
    int direction;
    int aniState;
    int aniFrame;
    int numFrames;
    int hide;
    int lucky;
    int special;
} SPRITE;
# 5 "main.c" 2
# 1 "tileset.h" 1
# 9 "tileset.h"
extern const unsigned short tilesetTiles[384];


extern const unsigned short tilesetPal[16];
# 6 "main.c" 2
# 1 "level1Map.h" 1







extern const unsigned short level1MapMap[4096];
# 7 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 8 "main.c" 2
# 1 "game.h" 1
OBJ_ATTR shadowOAM[128];

typedef enum {UP, RIGHT, DOWN, LEFT} DIRECTION;


void initializeGame1();
void initializeGame2();
void updateGame();
void drawGame();
void updatePlayer();
void updateEnemy();
void updateFuel();
void updateScore();
void updateLives();
void releaseSmoke(int x, int y, int direction);
void collisionOccurred();
unsigned char colorAt(int x, int y);


int seed;
int lives;
int fuel;
int flagsCollected;
int level;
int score;



SPRITE enemyPool[3];
void initializeEnemies();
extern int xEnemySpawn2[15];
extern int yEnemySpawn2[15];



void initializeRocks();
SPRITE rockPool[3];
extern int xRockSpawn2[15];
extern int yRockSpawn2[15];



void initializeFlags();
SPRITE flagPool[10];
extern int xFlagSpawn2[20];
extern int yFlagSpawn2[20];


SPRITE player;
int playerSpawnX;
int playerSpawnY;
int fuel;
int moved;



int smokeFrame;
SPRITE smoke;
# 9 "main.c" 2
# 1 "overlay.h" 1







extern const unsigned short overlayMap[1024];
# 10 "main.c" 2
# 1 "overlayTileSet.h" 1
# 21 "overlayTileSet.h"
extern const unsigned short overlayTileSetTiles[16384];


extern const unsigned short overlayTileSetPal[256];
# 11 "main.c" 2
# 1 "loseScreen.h" 1







extern const unsigned short loseScreenMap[1024];
# 12 "main.c" 2
# 1 "level2Map.h" 1







extern const unsigned short level2MapMap[4096];
# 13 "main.c" 2
# 1 "winScreen.h" 1







extern const unsigned short winScreenMap[1024];
# 14 "main.c" 2
# 1 "pauseScreen.h" 1







extern const unsigned short pauseScreenMap[1024];
# 15 "main.c" 2
# 1 "startScreen.h" 1







extern const unsigned short startScreenMap[1024];
# 16 "main.c" 2


enum {START, GAME1, GAME2, PAUSE, WIN, LOSE};
int state;


void testTilemap();
void goToStart();
void goToPause();
void goToInstructions();
void goToWin();
void goToLose();
void goToGame1();
void goToGame2();

unsigned short oldButtons;
unsigned short buttons;


int main() {
    mgba_open();
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);


    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << 12);
    (*(volatile unsigned short*)0x4000008) = ((1) << 2) | ((27) << 8) | (0<<14) | 0;
    (*(volatile unsigned short*)0x400000A) = ((0) << 2) | ((28) << 8) | (3<<14) | 2;


    DMANow(3, tilesetTiles, &((charblock *)0x06000000)[0], 768/2);
    DMANow(3, level1MapMap, &((screenblock *)0x6000000)[28], (8192)/2);

    DMANow(3, overlayTileSetTiles, &((charblock *)0x06000000)[1], 32768/2);
    DMANow(3, overlayTileSetPal, ((unsigned short *)0x5000000), 512/2);

    DMANow(3, spritesheetTiles, &((charblock *)0x06000000)[4], 32768/2);
    DMANow(3, spritesheetPal, ((u16 *)0x5000200), 256);

    goToStart();

    while (1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);


        switch(state){
            case (START):
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    goToGame1();
                }
                seed++;
                break;
            case (GAME1):
                updateGame();
                waitForVBlank();
                drawGame();
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToPause();
                }
                if (lives < 1 || fuel <= 0){
                    goToLose();
                }
                if (flagsCollected == 10){
                    score += (fuel * 10);
                    goToGame2();
                }
                break;
            case (GAME2):
                updateGame();
                waitForVBlank();
                drawGame();
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToPause();
                }
                if (lives < 1 || fuel <= 0){
                    goToLose();
                }
                if (flagsCollected == 10){
                    score += (fuel * 20);
                    goToWin();
                }
                break;
            case (PAUSE):
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    DMANow(3, overlayMap, &((screenblock *)0x6000000)[27], (2048)/2);
                    if (level == 1){
                        DMANow(3, level1MapMap, &((screenblock *)0x6000000)[28], (8192)/2);
                        state = GAME1;
                    } else {
                        DMANow(3, level2MapMap, &((screenblock *)0x6000000)[28], (8192)/2);
                        state = GAME2;
                    }
                }
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    goToStart();
                }
                break;
            case (WIN):
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    goToStart();
                }
            if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToGame1();
                }
                break;
            case (LOSE):
            if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    goToStart();
                }
            if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToGame1();
                }
                break;
        }

    }
}

void goToStart() {
    DMANow(3, startScreenMap, &((screenblock *)0x6000000)[27], (2048)/2);
    state = START;
    seed = 0;
}

void goToGame1() {
    flagsCollected = 0;
    level = 1;
    initializeGame1();
    state = GAME1;
}

void goToGame2() {
    flagsCollected = 0;
    level = 2;
    initializeGame2();
    state = GAME2;
}

void goToPause() {
    hideSprites();
    drawGame();
    DMANow(3, pauseScreenMap, &((screenblock *)0x6000000)[27], (2048)/2);
    state = PAUSE;
}

void goToWin() {
    DMANow(3, winScreenMap, &((screenblock *)0x6000000)[27], (2048)/2);
    state = WIN;
}

void goToLose() {
    DMANow(3, loseScreenMap, &((screenblock *)0x6000000)[27], (2048)/2);
    state = LOSE;
}
