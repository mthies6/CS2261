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
# 5 "main.c" 2
# 1 "puzzleOverlay.h" 1
# 21 "puzzleOverlay.h"
extern const unsigned short puzzleOverlayTiles[8192];


extern const unsigned short puzzleOverlayPal[256];
# 6 "main.c" 2
# 1 "game.h" 1
void initializeRoom();
void updateGame();
void drawGame();

void goToWin();
void gameMain();
void updatePuzzle();
void updateSpray();
void initializePuzzle();
void initializeSpray();
void goToRoom();
void goToPuzzle();

int gameStarted, currentBug;
# 7 "main.c" 2
# 1 "room.h" 1







extern const unsigned short roomMap[2048];
# 8 "main.c" 2
# 1 "roomTiles.h" 1
# 21 "roomTiles.h"
extern const unsigned short roomTilesTiles[16384];


extern const unsigned short roomTilesPal[256];
# 9 "main.c" 2
# 1 "menuScreen.h" 1







extern const unsigned short menuScreenMap[1024];
# 10 "main.c" 2
# 1 "pauseScreen.h" 1







extern const unsigned short pauseScreenMap[1024];
# 11 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 12 "main.c" 2
# 1 "winScreen.h" 1







extern const unsigned short winScreenMap[1024];
# 13 "main.c" 2
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
# 14 "main.c" 2
# 1 "city.h" 1







extern const unsigned short cityMap[2048];
# 15 "main.c" 2
# 1 "instructionsOne.h" 1







extern const unsigned short instructionsOneMap[1024];
# 16 "main.c" 2
# 1 "instructionsTwo.h" 1







extern const unsigned short instructionsTwoMap[1024];
# 17 "main.c" 2
# 1 "sound.h" 1



void setupSounds();
void playSong();
void playSolveEffect();
# 45 "sound.h"
typedef struct{
    const signed char* data;
    int dataLength;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int vBlankCount;
    unsigned int sampleRate;
} SOUND;

SOUND song;
SOUND solveEffect;

void soundHandler();
# 18 "main.c" 2
# 1 "interrupts.h" 1
int seconds, alertDuration, popupTime, popupX, popupY;

void initializeSprayInterrupts();
void setUpTimers();
void interruptHandler();
# 19 "main.c" 2




void initialize();
void goToMenu();
void goToPause();
void goToInstructions();
void goToLose();
void goToGame();

void stopSounds();

enum {MENU, GAME, INSTRUCTIONS, PAUSE, WIN, LOSE};
int state;

int seed;

unsigned short oldButtons;
unsigned short buttons;

int main() {
    gameStarted = 0;
    initialize();
    while (1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        switch(state){
            case (MENU):
                seed++;
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    goToGame();
                    srand(seed);
                }
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToInstructions();
                    srand(seed);
                }
                break;
            case (GAME):
                gameMain();
                for (int i = 0; i < 12; i++){
                    if (bugs[i].found == 0){
                        break;
                    } else if (i == 12 - 1){
                        goToWin();
                    }
                }
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToPause();
                }
                break;
            case (INSTRUCTIONS):
                if ((!(~(oldButtons) & ((1<<0))) && (~(buttons) & ((1<<0))))){
                    DMANow(3, instructionsTwoMap, &((screenblock *)0x6000000)[31], (2048)/2);
                }
                if ((!(~(oldButtons) & ((1<<1))) && (~(buttons) & ((1<<1))))){
                    DMANow(3, instructionsOneMap, &((screenblock *)0x6000000)[31], (2048)/2);
                }
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToMenu();
                }
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    goToGame();
                }
                break;
            case (PAUSE):
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToMenu();
                }
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    goToGame();
                }
                break;
            case (WIN):
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToMenu();
                }
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    goToGame();
                }
                break;
        }
    }
}


void initialize() {
    setUpTimers();
    setupSounds();
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    DMANow(3, spritesheetPal, ((u16 *)0x5000200), 512/2);
    DMANow(3, spritesheetTiles, &((charblock *)0x06000000)[4], 32768/2);

    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (1 % 4))) | (1 << (8 + (0 % 4))) | (1 << (8 + (2 % 4))) | (1 << 12);


    (*(volatile unsigned short*)0x4000008) = ((0) << 2) | ((31) << 8) | (0 << 14);


    (*(volatile unsigned short*)0x400000A) = ((1) << 2) | ((29) << 8) | (1 << 14);
    DMANow(3, puzzleOverlayPal, ((unsigned short *)0x5000000), 256);


    (*(volatile unsigned short*)0x400000C) = ((1) << 2) | ((27) << 8) | (1 << 14);


    DMANow(3, puzzleOverlayTiles, &((charblock *)0x06000000)[0], 16384/2);


    DMANow(3, roomTilesTiles, &((charblock *)0x06000000)[1], 32768/2);


    DMANow(3, cityMap, &((screenblock *)0x6000000)[27], (4096)/2);
    for (int i = 0; i < (4096)/2; i++){
        ((screenblock *)0x6000000)[27].tilemap[i] |= ((3 & 0xF) << 12);
    }


    DMANow(3, roomMap, &((screenblock *)0x6000000)[29], (4096)/2);

    for (int i = 0; i < (4096)/2; i++){
        ((screenblock *)0x6000000)[29].tilemap[i] |= ((1 & 0xF) << 12);
    }


    DMANow(3, menuScreenMap, &((screenblock *)0x6000000)[31], (2048)/2);

    state = MENU;
}

void goToMenu(){
    gameStarted = 0;
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);


    DMANow(3, menuScreenMap, &((screenblock *)0x6000000)[31], (2048)/2);
    state = MENU;
}

void goToPause(){
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    DMANow(3, pauseScreenMap, &((screenblock *)0x6000000)[31], (2048)/2);

    state = PAUSE;
}

void goToInstructions(){
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    DMANow(3, instructionsOneMap, &((screenblock *)0x6000000)[31], (2048)/2);
    state = INSTRUCTIONS;
}

void goToWin(){
    gameStarted = 0;
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    DMANow(3, winScreenMap, &((screenblock *)0x6000000)[31], (2048)/2);
    state = WIN;
}

void goToGame(){
    initializeBugs();
    if (!gameStarted){
        gameStarted = 1;
        playSong();
    }
    goToRoom();
    state = GAME;
}
