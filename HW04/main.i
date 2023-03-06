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
# 2 "main.c" 2
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
# 5 "main.c" 2
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
# 6 "main.c" 2
# 1 "space_start.h" 1
# 21 "space_start.h"
extern const unsigned short space_startBitmap[19200];


extern const unsigned short space_startPal[256];
# 7 "main.c" 2

unsigned short oldButtons;
unsigned short buttons;

static int highScore;
char buffer[20];

enum {START = 0, GAME = 1, PAUSE = 2, WIN = 3, LOSE = 4, SCORE = 5};
int state;


void initialize();
void goToStart();
void goToGame();
void goToPause();
void goToWin();
void goToLose();
void goToScore();

int main() {
    mgba_open();
    (*(volatile unsigned short *)0x4000000) = ((4) & 7) | (1 << (8 + (2 % 4))) | (1 << 4);
    gameStarted = 0;
    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        switch (state) {
            case (START):
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    waitForVBlank();
                    flipPage();
                    goToGame();
                }
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToScore();
                }
                break;
            case(GAME):
                updateGame();
                drawGame();
                waitForVBlank();
                flipPage();
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToPause();
                }
                if (score >= 400){
                    goToWin();
                }
                if (lost == 1){
                    goToLose();
                }
                break;
            case (PAUSE):
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    initialize();
                }
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToGame();
                }
                if ((!(~(oldButtons) & ((1<<9))) && (~(buttons) & ((1<<9))))){
                    goToScore();
                }
                break;
            case (WIN):
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    initialize();
                }
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToGame();
                }
                break;
            case (LOSE):
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    initialize();
                }
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToGame();
                }
                break;
            case (SCORE):
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))){
                    initialize();
                }
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))){
                    goToGame();
                }
                break;
        }
    }
}


void initialize(){
    DMANow(3, space_startPal, ((unsigned short *)0x5000000), 256);

    *(volatile u16*)0x04000084 = (1<<7);

    *(volatile u16*)0x04000080 = (((5) & 7) << 0) | (((5) & 7) << 4) |
                   (1 << 8) | (1 << 12) |
                   (1 << 9) | (1 << 13) |
                   (1 << 10) | (1 << 14) |
                   (1 << 11) | (1 << 15);
    *(volatile u16*)0x04000082 = ((2) % 3);

    goToStart();
}


void goToStart(){
    gameStarted = 0;
    fillScreen4((((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawFullscreenImage4(space_startBitmap);
    drawString4(12, 13, "Space Invaders", 0);
    drawString4(11, 12, "Space Invaders", 90);


    drawString4(92, 127, "Press SELECT for scores", 90);
    drawString4(112, 137, "Press START to play!", 90);

    waitForVBlank();
    flipPage();
    state = START;
}


void goToGame(){
    fillScreen4((((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    if(!gameStarted){
        gameStarted = 1;
        initializeGame();
    }
    waitForVBlank();
    flipPage();
    state = GAME;
}


void goToPause(){
    fillScreen4((((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawString4(101, 50, "PAUSED", 8);
    drawString4(40, 80, "Press SELECT to resume game", 8);
    drawString4(38, 90, "Press START to quit to start", 8);
    drawString4(20, 110, "Press LSHOULDER to go to scoreboard", 8);

    waitForVBlank();
    flipPage();
    state = PAUSE;
}


void goToScore(){
    fillScreen4((((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawString4(81, 30, "High Score:", 48);
    sprintf(buffer, "%d", highScore);
    drawString4(150, 30, buffer, 48);
    drawString4(40, 80, "Press SELECT to resume game", 48);
    drawString4(38, 90, "Press START to quit to start", 48);

    waitForVBlank();
    flipPage();
    state = PAUSE;
}


void goToWin(){
    if (score > highScore){
        highScore = score;
    }
    gameStarted = 0;
    fillScreen4((((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawString4(95, 45, "YOU WIN", 8);

    drawString4(42, 100, "Press SELECT to play again!", 8);
    drawString4(39, 120, "Press START to exit to start", 8);

    waitForVBlank();
    flipPage();
    state = WIN;
}


void goToLose(){
    *(volatile u16*)0x04000060 = (1 << 3) | ((3) & 7) | (((3) & 7) << 4);
    *(volatile u16*)0x04000062 = (((5) & 15) << 12) | (((3) & 7) << 8);
    *(volatile u16*)0x04000064 = (1<<15) | NOTE_C4;
    if (score > highScore){
        highScore = score;
    }
    gameStarted = 0;
    lost = 0;
    fillScreen4((((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawString4(95, 45, "YOU LOSE", 8);

    drawString4(47, 100, "Press SELECT to try again", 8);
    drawString4(39, 120, "Press START to exit to start", 8);

    waitForVBlank();
    flipPage();

    state = LOSE;
}
