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
# 33 "gba.h"
void waitForVBlank();
# 49 "gba.h"
void drawRect(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
# 67 "gba.h"
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

extern unsigned short* videoBuffer;


void frameOne();
void frameTwo();
void frameThree();
void frameFour();
void initialize();
void update();
void draw();

u16 bodyColor, eyeColor, tongueColor, oldButtons, buttons;
int bodySize, currentFrame, isLooping, skipFrameCount, skipAmount, loopForward, speedCount;

int main() {
    mgba_open();

    initialize();
    while (1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        update();
        waitForVBlank();
        draw();
    }
}


void initialize() {
    (*(volatile unsigned short *)0x4000000) = ((3) & 7) | (1<<10);

    bodyColor = ((10) | (6) << 5 | (13) << 10);
    eyeColor = ((16) | (6) << 5 | (3) << 10);
    tongueColor = ((31) | (18) << 5 | (20) << 10);
    isLooping = 0;
    currentFrame = 0;
    oldButtons = 0;
    buttons = (*(volatile unsigned short *)0x04000130);
    fillScreen(bodyColor);
    skipAmount = 30;
    loopForward = 1;
    speedCount = 3;
    skipFrameCount = 0;
}

void update(){
    if((((~(*(volatile unsigned short *)0x04000130)) & (1<<3)) && !((~oldButtons) & (1<<3)))) {
        isLooping = !isLooping;
    }
    if(isLooping){
        skipFrameCount++;
        if (skipFrameCount >= skipAmount){
            if(loopForward){
                if (currentFrame == 3) {
                    currentFrame = 0;
                } else {
                    currentFrame++;
                }
            } else {
                if (currentFrame == 0) {
                    currentFrame = 3;
                } else {
                    currentFrame--;
                }
            }
            skipFrameCount = 0;
        }
    }
    if ((((~(*(volatile unsigned short *)0x04000130)) & (1<<2)) && !((~oldButtons) & (1<<2)))){
        if(!isLooping) {
            isLooping = 1;
        }
        loopForward = !loopForward;
    }
    if((((~(*(volatile unsigned short *)0x04000130)) & (1<<0)) && !((~oldButtons) & (1<<0)))){
        if (currentFrame == 3) {
            currentFrame = 0;
        } else {
            currentFrame++;
        }
    }
    if ((((~(*(volatile unsigned short *)0x04000130)) & (1<<1)) && !((~oldButtons) & (1<<1)))){
        if (currentFrame == 0) {
            currentFrame = 3;
        } else {
            currentFrame--;
        }
    }
    if ((((~(*(volatile unsigned short *)0x04000130)) & (1<<5)) && !((~oldButtons) & (1<<5)))){
        currentFrame = 0;
    }
    if ((((~(*(volatile unsigned short *)0x04000130)) & (1<<4)) && !((~oldButtons) & (1<<4)))){
        currentFrame = 3;
    }
    if ((((~(*(volatile unsigned short *)0x04000130)) & (1<<6)) && !((~oldButtons) & (1<<6))) && speedCount < 5 && isLooping){
        speedCount++;
        skipAmount /= 2;
    }
    if ((((~(*(volatile unsigned short *)0x04000130)) & (1<<7)) && !((~oldButtons) & (1<<7))) && speedCount > 1 && isLooping){
        speedCount--;
        skipAmount *= 2;
    }
}

void draw(){
    switch(currentFrame) {
        case 0:
            frameOne();
            break;
        case 1:
            frameTwo();
            break;
        case 2:
            frameThree();
            break;
        case 3:
            frameFour();
            break;
    }
}

void frameOne(){
    drawRect(168, 45, 24, 24, bodyColor);
    drawRect(105, 94, 20, 11, bodyColor);
# 161 "main.c"
    drawRect(92, 60, 10, 10, eyeColor);
    drawRect(97, 65, 10, 10, eyeColor);
    drawRect(100, 63, 5, 5, ((0) | (0) << 5 | (0) << 10));
    drawRect(92, 59, 10, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(101, 61, 3, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(103, 63, 4, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(107, 65, 2, 5, ((0) | (0) << 5 | (0) << 10));


    drawRect(126, 60, 10, 10, eyeColor);
    drawRect(121, 65, 10, 10, eyeColor);
    drawRect(123, 63, 5, 5, ((0) | (0) << 5 | (0) << 10));
    drawRect(126, 59, 10, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(124, 61, 3, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(121, 63, 4, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(119, 65, 2, 5, ((0) | (0) << 5 | (0) << 10));


    drawRect(95, 84, 40, 6, ((31) | (31) << 5 | (31) << 10));
    drawRect(91, 80, 4, 4, ((31) | (31) << 5 | (31) << 10));
    drawRect(135, 80, 4, 4, ((31) | (31) << 5 | (31) << 10));
    drawRect(101, 90, 28, 4, ((31) | (31) << 5 | (31) << 10));
    drawRect(104, 84, 2, 10, ((0) | (0) << 5 | (0) << 10));
    drawRect(114, 84, 2, 10, ((0) | (0) << 5 | (0) << 10));
    drawRect(124, 84, 2, 10, ((0) | (0) << 5 | (0) << 10));
}

void frameTwo(){
    drawRect(168, 45, 24, 24, bodyColor);
# 222 "main.c"
    drawRect(92, 60, 10, 10, eyeColor);
    drawRect(97, 65, 10, 10, eyeColor);
    drawRect(100, 63, 5, 5, ((0) | (0) << 5 | (0) << 10));
    drawRect(92, 59, 10, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(101, 61, 3, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(103, 63, 4, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(107, 65, 2, 5, ((0) | (0) << 5 | (0) << 10));


    drawRect(126, 60, 10, 10, eyeColor);
    drawRect(121, 65, 10, 10, eyeColor);
    drawRect(123, 63, 5, 5, ((0) | (0) << 5 | (0) << 10));
    drawRect(126, 59, 10, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(124, 61, 3, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(121, 63, 4, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(119, 65, 2, 5, ((0) | (0) << 5 | (0) << 10));


    drawRect(95, 84, 40, 3, ((31) | (31) << 5 | (31) << 10));
    drawRect(95, 87, 40, 3, ((0) | (0) << 5 | (0) << 10));
    drawRect(91, 80, 4, 4, ((31) | (31) << 5 | (31) << 10));
    drawRect(135, 80, 4, 4, ((31) | (31) << 5 | (31) << 10));
    drawRect(101, 90, 28, 4, ((0) | (0) << 5 | (0) << 10));
    drawRect(104, 84, 2, 10, ((0) | (0) << 5 | (0) << 10));
    drawRect(114, 84, 2, 10, ((0) | (0) << 5 | (0) << 10));
    drawRect(124, 84, 2, 10, ((0) | (0) << 5 | (0) << 10));
    drawRect(105, 90, 20, 15, tongueColor);
}

void frameThree(){
    drawRect(168, 45, 24, 24, bodyColor);
# 285 "main.c"
    drawRect(92, 60, 10, 10, eyeColor);
    drawRect(97, 65, 10, 10, eyeColor);
    drawRect(100, 63, 5, 5, ((0) | (0) << 5 | (0) << 10));
    drawRect(92, 59, 10, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(101, 61, 3, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(103, 63, 4, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(107, 65, 2, 5, ((0) | (0) << 5 | (0) << 10));


    drawRect(126, 60, 10, 10, eyeColor);
    drawRect(121, 65, 10, 10, eyeColor);
    drawRect(123, 63, 5, 5, ((0) | (0) << 5 | (0) << 10));
    drawRect(126, 59, 10, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(124, 61, 3, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(121, 63, 4, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(119, 65, 2, 5, ((0) | (0) << 5 | (0) << 10));


    drawRect(95, 84, 40, 3, ((31) | (31) << 5 | (31) << 10));
    drawRect(95, 87, 40, 3, ((0) | (0) << 5 | (0) << 10));
    drawRect(91, 80, 4, 4, ((31) | (31) << 5 | (31) << 10));
    drawRect(135, 80, 4, 4, ((31) | (31) << 5 | (31) << 10));
    drawRect(101, 90, 28, 4, ((0) | (0) << 5 | (0) << 10));
    drawRect(104, 84, 2, 10, ((0) | (0) << 5 | (0) << 10));
    drawRect(114, 84, 2, 10, ((0) | (0) << 5 | (0) << 10));
    drawRect(124, 84, 2, 10, ((0) | (0) << 5 | (0) << 10));
    drawRect(105, 90, 20, 15, tongueColor);


    drawRect(175, 50, 10, 14, ((31) | (31) << 5 | (31) << 10));
    drawRect(173, 52, 14, 10, ((31) | (31) << 5 | (31) << 10));
    drawRect(175, 52, 10, 10, ((15) | (15) << 5 | (15) << 10));
    drawRect(177, 54, 6, 6, ((0) | (0) << 5 | (0) << 10));
}

void frameFour(){
    drawRect(168, 45, 24, 24, bodyColor);
    drawRect(105, 94, 20, 11, bodyColor);
# 355 "main.c"
    drawRect(92, 60, 10, 10, eyeColor);
    drawRect(97, 65, 10, 10, eyeColor);
    drawRect(100, 63, 5, 5, ((0) | (0) << 5 | (0) << 10));
    drawRect(92, 59, 10, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(101, 61, 3, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(103, 63, 4, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(107, 65, 2, 5, ((0) | (0) << 5 | (0) << 10));


    drawRect(126, 60, 10, 10, eyeColor);
    drawRect(121, 65, 10, 10, eyeColor);
    drawRect(123, 63, 5, 5, ((0) | (0) << 5 | (0) << 10));
    drawRect(126, 59, 10, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(124, 61, 3, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(121, 63, 4, 2, ((0) | (0) << 5 | (0) << 10));
    drawRect(119, 65, 2, 5, ((0) | (0) << 5 | (0) << 10));


    drawRect(95, 84, 40, 6, ((31) | (31) << 5 | (31) << 10));
    drawRect(91, 80, 4, 4, ((31) | (31) << 5 | (31) << 10));
    drawRect(135, 80, 4, 4, ((31) | (31) << 5 | (31) << 10));
    drawRect(101, 90, 28, 4, ((31) | (31) << 5 | (31) << 10));
    drawRect(104, 84, 2, 10, ((0) | (0) << 5 | (0) << 10));
    drawRect(114, 84, 2, 10, ((0) | (0) << 5 | (0) << 10));
    drawRect(124, 84, 2, 10, ((0) | (0) << 5 | (0) << 10));


    drawRect(170, 45, 20, 24, ((15) | (15) << 5 | (15) << 10));
    drawRect(168, 47, 24, 20, ((15) | (15) << 5 | (15) << 10));
    drawRect(171, 48, 18, 18, ((0) | (0) << 5 | (0) << 10));
    drawRect(174, 51, 12, 12, bodyColor);
    drawRect(177, 54, 6, 6, ((31) | (0) << 5 | (31) << 10));
}
