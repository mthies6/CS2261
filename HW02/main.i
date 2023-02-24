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
void fillScreen(volatile unsigned short color);
# 73 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
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
# 1 "text.h" 1

void drawChar(int x, int y, char ch, unsigned short color);
void drawString(int x, int y, char *str, unsigned short color);
# 4 "main.c" 2
# 1 "font.h" 1

extern const unsigned char fontdata_6x8[12288];
# 5 "main.c" 2


void initialize();
void goToGame();
void goToPause();
void goToStart();
void goToWin();
void goToLose();
void goToInstructions();
void updateStart();
void drawStart();

int startBallX1, startBallY1, startBallOldX1, startBallOldY1, startBallX2, startBallY2, startBallOldX2, startBallOldY2, ballVx, ballVy;

enum {START = 0, GAME = 1, PAUSE = 2, WIN = 3, LOSE = 4, INSTRUCTIONS = 5};
int state, lives, gameStarted, rectArea;

u16 oldButtons;
u16 buttons;

int main(){
    mgba_open();

    initialize();

    while(1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);
        switch (state) {
            case (START):
                updateStart();
                waitForVBlank();
                drawStart();
                if ((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))){
                    goToGame();
                }
                if ((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))){
                    goToInstructions();
                }
                break;
            case(GAME):
                updateGame();
                waitForVBlank();
                drawGame();
                if ((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))){
                    goToPause();
                }
                if (lives < 1){
                    goToLose();
                }
                if (rectArea < 625) {
                    goToWin();
                }
                break;
            case (PAUSE):
                if ((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))){
                    goToStart();
                }
                if ((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))){
                    goToGame();
                }
                break;
            case (WIN):
                if ((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))){
                    goToStart();
                }
                if ((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))){
                    goToGame();
                }
                break;
            case (LOSE):
                if ((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))){
                    goToStart();
                }
                if ((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))){
                    goToGame();
                }
                break;
            case (INSTRUCTIONS):
                if ((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))){
                    goToStart();
                }
                break;
        }
    }
}

void initialize(){
    (*(volatile unsigned short *)0x4000000) = ((3) & 7) | (1<<10);
    oldButtons = 0;
    goToStart();
}

void goToGame(){
    fillScreen(((0&31) | (0&31) << 5 | (0&31) << 10));
    state = GAME;
    if(!gameStarted){
        gameStarted = 1;
        initializeGame();
    } else {

        drawBackGround();
    }
}

void goToPause(){
    state = PAUSE;
    fillScreen(((0&31) | (0&31) << 5 | (0&31) << 10));

    drawString(101, 50, "PAUSED", ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawString(40, 80, "Press SELECT to resume game", ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawString(38, 90, "Press START to quit to start", ((31&31) | (31&31) << 5 | (31&31) << 10));
}

void goToWin(){
    fillScreen(((0&31) | (0&31) << 5 | (0&31) << 10));
    gameStarted = 0;
    state = WIN;
    drawString(96, 46, "YOU WIN!", ((15&31) | (15&31) << 5 | (15&31) << 10));
    drawString(95, 45, "YOU WIN!", ((0&31) | (31&31) << 5 | (31&31) << 10));

    drawString(42, 100, "Press SELECT to play again!", ((20&31) | (20&31) << 5 | (20&31) << 10));
    drawString(39, 120, "Press START to exit to start", ((20&31) | (20&31) << 5 | (20&31) << 10));
}

void goToLose(){
    fillScreen(((0&31) | (0&31) << 5 | (0&31) << 10));
    gameStarted = 0;
    state = LOSE;

    drawString(96, 46, "YOU LOSE", ((10&31) | (10&31) << 5 | (10&31) << 10));
    drawString(95, 45, "YOU LOSE", ((31&31) | (0&31) << 5 | (0&31) << 10));

    drawString(47, 100, "Press SELECT to try again", ((20&31) | (20&31) << 5 | (20&31) << 10));
    drawString(39, 120, "Press START to exit to start", ((20&31) | (20&31) << 5 | (20&31) << 10));
}

void goToStart(){
    fillScreen(((0&31) | (0&31) << 5 | (0&31) << 10));
    state = START;
    gameStarted = 0;

    drawString(96, 36, "JezzBall", ((10&31) | (10&31) << 5 | (10&31) << 10));
    drawString(95, 35, "JezzBall", ((31&31) | (0&31) << 5 | (31&31) << 10));
    drawString(64, 100, "Press START to play!", ((20&31) | (20&31) << 5 | (20&31) << 10));
    drawString(37, 120, "Press SELECT for instructions", ((20&31) | (20&31) << 5 | (20&31) << 10));


    drawRect(17, 47, 36, 36, ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawRect(18, 48, 34, 34, ((0&31) | (0&31) << 5 | (0&31) << 10));
    drawRect(20, 50, 30, 30, ((15&31) | (15&31) << 5 | (15&31) << 10));
    startBallX1 = 30;
    startBallY1 = 60;
    startBallOldX1 = 30;
    startBallOldY1 = 60;


    drawRect(187, 47, 36, 36, ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawRect(188, 48, 34, 34, ((0&31) | (0&31) << 5 | (0&31) << 10));
    drawRect(190, 50, 30, 30, ((15&31) | (15&31) << 5 | (15&31) << 10));
    startBallX2 = 200;
    startBallY2 = 60;
    startBallOldX2 = 30;
    startBallOldY2 = 60;


    ballVx = 2;
    ballVy = 1;
}


void updateStart(){
    startBallOldX1 = startBallX1;
    startBallOldY1 = startBallY1;
    startBallX1 += ballVx;
    startBallY1 += ballVy;

    startBallOldX2 = startBallX2;
    startBallOldY2 = startBallY2;
    startBallX2 += ballVx;
    startBallY2 += ballVy;

    if(startBallX1 < 21 || startBallX2 < 191){
        ballVx = -ballVx;
    }
    if (startBallX1 > 45 || startBallX2 > 215){
        ballVx = -ballVx;
    }
    if (startBallY1 < 51 || startBallX2 < 51){
        ballVy = -ballVy;
    }
    if (startBallY1 > 76 || startBallX2 < 76){
        ballVy = -ballVy;
    }
}

void drawStart(){
    drawRect(startBallOldX1, startBallOldY1, 3, 3, ((15&31) | (15&31) << 5 | (15&31) << 10));
    drawRect(startBallX1, startBallY1, 3, 3, ((31&31) | (0&31) << 5 | (31&31) << 10));
    drawRect(startBallOldX2, startBallOldY2, 3, 3, ((15&31) | (15&31) << 5 | (15&31) << 10));
    drawRect(startBallX2, startBallY2, 3, 3, ((31&31) | (0&31) << 5 | (31&31) << 10));
}

void goToInstructions(){
    fillScreen(((0&31) | (0&31) << 5 | (0&31) << 10));
    state = INSTRUCTIONS;
    drawString(85, 10, "Game Controls", ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawString(4, 40, "Press A to draw a line", ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawString(4, 52, "Press UP/DOWN or LEFT/RIGHT to change  direction", ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawString(4, 72, "Press SELECT at anytime to pause game", ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawString(4, 120, "Press START to return to start", ((31&31) | (31&31) << 5 | (31&31) << 10));
}
