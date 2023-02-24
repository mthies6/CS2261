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
# 2 "main.c" 2
# 1 "print.h" 1
# 26 "print.h"
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
# 27 "print.h" 2
# 36 "print.h"

# 36 "print.h"
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
uint8_t mgba_open(void);
void mgba_close(void);
# 3 "main.c" 2
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
# 4 "main.c" 2
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
# 5 "main.c" 2

unsigned short oldButtons;
unsigned short buttons;

enum {START = 0, GAME = 1, PAUSE = 2, WIN = 3, LOSE = 4};
int state;


void initialize();
void goToStart();
void goToGame();
void goToPause();
void goToWin();
void goToLose();

int main() {
    seed++;
    mgba_open();
    (*(volatile unsigned short *)0x4000000) = ((3) & 7) | (1 << (8 + (2 % 4)));

    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        switch (state) {
            case (START):
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    goToGame();
                }
                break;
            case(GAME):
                updateGame();
                waitForVBlank();
                drawGame();
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToPause();
                }
                if(numKilled >= 50){
                    goToWin();
                }
                if(lives < 1){
                    goToLose();
                }
                break;
            case (PAUSE):
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    goToStart();
                }
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToGame();
                }
                break;
            case (WIN):
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    goToStart();
                }
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToGame();
                }
                break;
            case (LOSE):
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    goToStart();
                }
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToGame();
                }
                break;
                break;
        }
    }
}


void initialize(){
    goToStart();

    *(volatile u16*)0x04000084 = (1<<7);

    *(volatile u16*)0x04000080 = (((5) & 7) << 0) |
                   (((5) & 7) << 4) |
                   (1 << 8) |
                   (1 << 12) |
                   (1 << 9) |
                   (1 << 13) |
                   (1 << 10) |
                   (1 << 14) |
                   (1 << 11) |
                   (1 << 15);
    *(volatile u16*)0x04000082 = ((2) % 3);
}


void goToStart(){
    fillScreen(((15&31) | (10&31) << 5 | (10&31) << 10));
    state = START;
    drawString(81, 37, "Shoot 'Em Up!", ((0&31) | (0&31) << 5 | (0&31) << 10));
    drawString(80, 36, "Shoot 'Em Up!", ((0&31) | (31&31) << 5 | (31&31) << 10));
    drawString(62, 101, "Press START to play!", ((0&31) | (0&31) << 5 | (0&31) << 10));
    drawString(61, 100, "Press START to play!", ((31&31) | (31&31) << 5 | (31&31) << 10));
}


void goToGame(){
    fillScreen(((0&31) | (0&31) << 5 | (0&31) << 10));
    if(!gameStarted){
        gameStarted = 1;
        initializeGame();
    } else {

        drawBackground();
    }
    state = GAME;
}


void goToPause(){
    fillScreen(((0&31) | (0&31) << 5 | (0&31) << 10));
    state = PAUSE;
    drawString(101, 50, "PAUSED", ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawString(40, 80, "Press SELECT to resume game", ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawString(38, 90, "Press START to quit to start", ((31&31) | (31&31) << 5 | (31&31) << 10));
}


void goToWin(){
    gameStarted = 0;
    fillScreen(((0&31) | (0&31) << 5 | (0&31) << 10));
    state = WIN;
    drawString(96, 46, "YOU WIN", ((15&31) | (15&31) << 5 | (15&31) << 10));
    drawString(95, 45, "YOU WIN", ((31&31) | (0&31) << 5 | (31&31) << 10));

    drawString(42, 100, "Press SELECT to play again!", ((20&31) | (20&31) << 5 | (20&31) << 10));
    drawString(39, 120, "Press START to exit to start", ((20&31) | (20&31) << 5 | (20&31) << 10));
}


void goToLose(){
    gameStarted = 0;
    *(volatile u16*)0x0400006C = (1<<15);
    *(volatile u16*)0x04000068 = 0;
    fillScreen(((0&31) | (0&31) << 5 | (0&31) << 10));
    state = LOSE;
    drawString(96, 46, "YOU LOSE", ((10&31) | (10&31) << 5 | (10&31) << 10));
    drawString(95, 45, "YOU LOSE", ((31&31) | (31&31) << 5 | (31&31) << 10));

    drawString(47, 100, "Press SELECT to try again", ((20&31) | (20&31) << 5 | (20&31) << 10));
    drawString(39, 120, "Press START to exit to start", ((20&31) | (20&31) << 5 | (20&31) << 10));
}
