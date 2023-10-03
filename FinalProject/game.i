# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef void (*ihp)(void);






extern volatile unsigned short *videoBuffer;
# 40 "gba.h"
void waitForVBlank();
# 57 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 73 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 105 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 2 "game.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct { u16 tileData[16]; } TILE;
typedef TILE charblock[512];



typedef struct {
 u16 tilemap[1024];
} screenblock;
# 3 "game.c" 2
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
# 4 "game.c" 2
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
    int dx;
    int dy;
    int width;
    int height;
    int direction;
    int isMoving;
    int timeUntilNextFrame;
    int frame;
    int numOfFrames;
    int active;
    int hide;
} SPRITE;
# 5 "game.c" 2
# 1 "blueMorpho.h" 1







extern const unsigned short blueMorphoMap[1024];
# 6 "game.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 7 "game.c" 2
# 1 "bugs.h" 1
extern int blueMorphoSolution[100];
extern int wormSolution[100];
extern int bumbleBeeSolution[100];
extern int prayingMantisSolution[100];
extern int violinBeetleSolution[100];
extern int leafBugSolution[100];

extern int grasshopperSolution[144];
extern int stagBeetleSolution[144];
extern int shieldBugSolution[144];
extern int dragonHeadedCatepillarSolution[144];

extern int acornWeevilSolution[196];
extern int rosyMapleMothSolution[196];

enum bugTypes {BLUEMORPHO, WORM, BUMBLEBEE, MANTIS, VIOLIN, LEAFBUG, GRASSHOPPER, STAG, SHIELD, DRAGON, ACORN, MOTH};
enum rarity {COMMON = 100, UNCOMMON = 144, RARE = 196};

void initializeBugs();



typedef struct {
    int x;
    int y;
    int width;
    int height;
    int found;
    int *solution;
    int rarity;
    int startX;
    int startY;
    int puzzleWidth;
    int palRow;
} BUG;

extern BUG bugs[12];
# 8 "game.c" 2
# 1 "table.h" 1







extern const unsigned short tableMap[1024];
# 9 "game.c" 2
# 1 "bugBible.h" 1







extern const unsigned short bugBibleMap[1024];
# 10 "game.c" 2

OBJ_ATTR shadowOAM[128];

void goToSpray();
void drawGame();
void updateGame();
void goToRoom();
void goToBible();

int hOff;
int vOff;

SPRITE arrow;

enum {ROOM, SPRAY, PUZZLE, BIBLE};
int gameState;

void gameMain(){
    switch(gameState){
        case (ROOM):
            updateGame();
            waitForVBlank();
            drawGame();
            if((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3)))) && arrow.x == 174){
                goToSpray();
            }
            if((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3)))) && arrow.x == 50){
                goToBible();
            }
            break;
        case (SPRAY):
            updateSpray();
            waitForVBlank();
            drawGame();
            if((!(~(oldButtons) & ((1<<1))) && (~(buttons) & ((1<<1))))){
                goToRoom();
            }
            break;
        case (PUZZLE):
            updatePuzzle();
            waitForVBlank();
            drawGame();
            break;
        case (BIBLE):
            shadowOAM[10].attr0 = (2<<14) | ((32) & 0xFF) | (0<<8);
            shadowOAM[10].attr1 = (2<<14) | ((32) & 0x1FF);
            shadowOAM[10].attr2 = (((0) * 32 + (4)) & 0x3FF) | (((0) & 0xF) << 12);

            shadowOAM[11].attr0 = (2<<14) | ((32) & 0xFF) | (0<<8);
            shadowOAM[11].attr1 = (2<<14) | ((176) & 0x1FF);
            shadowOAM[11].attr2 = (((0) * 32 + (4)) & 0x3FF) | (((1) & 0xF) << 12);

            shadowOAM[12].attr0 = (2<<14) | ((96) & 0xFF) | (0<<8);
            shadowOAM[12].attr1 = (2<<14) | ((112) & 0x1FF);
            shadowOAM[12].attr2 = (((0) * 32 + (4)) & 0x3FF) | (((2) & 0xF) << 12);
            waitForVBlank();
            drawGame();

            if((!(~(oldButtons) & ((1<<1))) && (~(buttons) & ((1<<1))))){
                goToRoom();
            }
            break;
    }
}

void initializeRoom(){
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << (8 + (2 % 4))) |(1 << 12);
    mgba_open();
    DMANow(3, tableMap, &((screenblock *)0x6000000)[31], (2048)/2);

    for (int i = 0; i < (2048)/2; i++){
        ((screenblock *)0x6000000)[31].tilemap[i] |= ((2 & 0xF) << 12);
    }

    hOff = 150;

    gameState = ROOM;
    arrow.numOfFrames = 3;
    arrow.timeUntilNextFrame = 20;
    arrow.height = 32;
    arrow.width = 16;
    arrow.x = 50;
    arrow.y = 98;
}

void goToRoom(){
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    initializeRoom();
    gameState = ROOM;
}

void goToSpray(){
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    initializeSpray();
    gameState = SPRAY;
}

void goToBible(){
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    DMANow(3, bugBibleMap, &((screenblock *)0x6000000)[31], (2048)/2);
    for (int i = 0; i < (2048)/2; i++){
        ((screenblock *)0x6000000)[31].tilemap[i] |= ((2 & 0xF) << 12);
    }
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);


    gameState = BIBLE;
}

void goToPuzzle(){
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    initializePuzzle();
    gameState = PUZZLE;
}

void updateGame(){
    if ((!(~(oldButtons) & ((1<<9))) && (~(buttons) & ((1<<9))))){
        for (int i = 0; i < 12; i++){
        mgba_printf("bug num: %d, found?: %d", i, bugs[i].found);
        }
    }
    if ((~(buttons) & ((1<<5)))){
        hOff--;
    }
    if ((~(buttons) & ((1<<4)))){
        hOff++;
    }
    if ((~(buttons) & ((1<<6)))){
        vOff--;
    }
    if ((~(buttons) & ((1<<7)))){
        vOff++;
    }
    if ((!(~(oldButtons) & ((1<<0))) && (~(buttons) & ((1<<0))))){
        arrow.x = 174;
        arrow.y = 50;
    }
    if ((!(~(oldButtons) & ((1<<1))) && (~(buttons) & ((1<<1))))){
        arrow.x = 50;
        arrow.y = 98;
    }

    if (vOff > 256 - 160) { vOff = 256 - 160; }
    if (vOff < 0) { vOff = 0; }
    if (hOff > 512 - 240) { hOff = 512 - 240; }
    if (hOff < 0) { hOff = 0; }

    arrow.timeUntilNextFrame--;
    if (arrow.timeUntilNextFrame == 0){
        arrow.frame = (arrow.frame + 1) % arrow.numOfFrames;
        arrow.timeUntilNextFrame = 20;
    }

    shadowOAM[0].attr0 = (2<<14) | ((arrow.y) & 0xFF) | (0<<8);
    shadowOAM[0].attr1 = (2<<14) | ((arrow.x) & 0x1FF);
    shadowOAM[0].attr2 = (((0) & 0xF) << 12) | (((arrow.frame * 4) * 32 + (1)) & 0x3FF);

    shadowOAM[1].attr0 = (0<<14) | ((75) & 0xFF) | (0<<8);
    shadowOAM[1].attr1 = (3<<14) | ((135) & 0x1FF) | (1<<12);
    shadowOAM[1].attr2 = (((1) & 0xF) << 12) | (((0) * 32 + (6)) & 0x3FF);
}

void drawGame(){
    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000018) = hOff/3 - 10;
    (*(volatile unsigned short *)0x0400001A) = vOff/3;
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
}
