# 1 "bugs.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "bugs.c"
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
# 2 "bugs.c" 2
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
# 3 "bugs.c" 2

BUG bugs[12];

void initializeBugs(){

    bugs[BLUEMORPHO].found = 0;
    bugs[BLUEMORPHO].solution = blueMorphoSolution;
    bugs[BLUEMORPHO].rarity = COMMON;
    bugs[BLUEMORPHO].palRow = 0;


    bugs[WORM].found = 0;
    bugs[WORM].solution = wormSolution;
    bugs[WORM].rarity = COMMON;
    bugs[WORM].palRow = 0;


    bugs[BUMBLEBEE].found = 0;
    bugs[BUMBLEBEE].solution = bumbleBeeSolution;
    bugs[BUMBLEBEE].rarity = COMMON;
    bugs[BUMBLEBEE].palRow = 2;


    bugs[MANTIS].found = 0;
    bugs[MANTIS].solution = prayingMantisSolution;
    bugs[MANTIS].rarity = COMMON;
    bugs[MANTIS].palRow = 3;


    bugs[VIOLIN].found = 0;
    bugs[VIOLIN].solution = violinBeetleSolution;
    bugs[VIOLIN].rarity = COMMON;
    bugs[VIOLIN].palRow = 2;



    bugs[LEAFBUG].found = 0;
    bugs[LEAFBUG].solution = leafBugSolution;
    bugs[LEAFBUG].rarity = COMMON;
    bugs[LEAFBUG].palRow = 3;



    bugs[GRASSHOPPER].found = 0;
    bugs[GRASSHOPPER].solution = grasshopperSolution;
    bugs[GRASSHOPPER].rarity = UNCOMMON;


    bugs[STAG].found = 0;
    bugs[STAG].solution = stagBeetleSolution;
    bugs[STAG].rarity = UNCOMMON;
    bugs[STAG].palRow = 2;


    bugs[SHIELD].found = 0;
    bugs[SHIELD].solution = shieldBugSolution;
    bugs[SHIELD].rarity = UNCOMMON;


    bugs[DRAGON].found = 0;
    bugs[DRAGON].solution = dragonHeadedCatepillarSolution;
    bugs[DRAGON].rarity = UNCOMMON;


    bugs[ACORN].found = 0;
    bugs[ACORN].solution = acornWeevilSolution;
    bugs[ACORN].rarity = RARE;


    bugs[MOTH].found = 0;
    bugs[MOTH].solution = rosyMapleMothSolution;
    bugs[MOTH].rarity = RARE;

    for (int i = 0; i < 12; i++){
        if (bugs[i].rarity == COMMON){
            bugs[i].startX = 80;
            bugs[i].startY = 40;
            bugs[i].puzzleWidth = 80;
        } else if (bugs[i].rarity == UNCOMMON){
            bugs[i].startX = 64;
            bugs[i].startY = 32;
            bugs[i].puzzleWidth = 96;
        }
         else if (bugs[i].rarity == RARE){
            bugs[i].startX = 48;
            bugs[i].startY = 32;
            bugs[i].puzzleWidth = 112;
        }
        mgba_printf("bug num: %d, rarity: %d", i, bugs[i].rarity);
    }
}


int blueMorphoSolution[100] = {
    0, 1, 0, 0, 0, 0, 0, 0, 1, 0,
    1, 1, 1, 0, 0, 0, 0, 1, 1, 1,
    1, 1, 1, 1, 0, 0, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    0, 1, 1, 1, 1, 1, 1, 1, 1, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 0, 0, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 0, 0,
    0, 0, 1, 1, 0, 0, 1, 1, 0, 0,
    0, 1, 1, 0, 0, 0, 0, 1, 1, 0
};

int wormSolution[100] = {
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 1, 1, 0,
    1, 1, 1, 0, 0, 0, 0, 1, 1, 1,
    0, 1, 1, 1, 0, 0, 1, 1, 1, 1,
    0, 1, 1, 1, 1, 0, 1, 1, 1, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 1, 0,
    0, 0, 0, 1, 1, 1, 1, 1, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

int bumbleBeeSolution[100] = {
    0, 1, 1, 0, 0, 1, 0, 0, 0, 0,
    1, 0, 0, 1, 0, 0, 1, 0, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 0, 0, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 1, 0,
    1, 1, 1, 1, 1, 1, 1, 1, 0, 1,
    0, 1, 1, 1, 1, 1, 1, 1, 0, 0,
    0, 1, 1, 1, 1, 1, 1, 0, 1, 0,
    0, 0, 1, 1, 1, 1, 0, 0, 1, 0,
    0, 0, 0, 0, 1, 0, 0, 1, 1, 0,
    0, 0, 0, 0, 1, 1, 1, 0, 0, 0
};

int prayingMantisSolution[100] = {
    0, 1, 0, 1, 0, 0, 0, 0, 0, 0,
    0, 0, 1, 1, 1, 0, 0, 0, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 0, 0, 0,
    0, 0, 0, 0, 1, 1, 1, 1, 0, 0,
    0, 1, 1, 1, 1, 1, 1, 1, 1, 0,
    1, 1, 1, 0, 0, 1, 1, 1, 1, 1,
    1, 1, 0, 0, 0, 0, 1, 1, 1, 1,
    1, 0, 0, 0, 0, 1, 1, 1, 1, 1,
    0, 0, 0, 1, 1, 0, 1, 1, 1, 0,
    0, 0, 0, 1, 0, 0, 1, 0, 0, 1
};

int violinBeetleSolution[100] = {
    1, 0, 1, 1, 1, 1, 1, 0, 1, 0,
    1, 0, 0, 0, 1, 0, 0, 0, 1, 0,
    0, 1, 1, 0, 1, 0, 1, 1, 0, 0,
    0, 0, 0, 1, 1, 1, 0, 0, 0, 0,
    0, 1, 1, 0, 1, 0, 1, 1, 0, 0,
    1, 0, 0, 1, 1, 1, 0, 0, 1, 0,
    0, 0, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 0, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 1, 1, 1, 1, 1, 1, 1, 0, 0,
    1, 0, 0, 1, 1, 1, 0, 0, 1, 0
};

int leafBugSolution[100] = {
    0, 0, 1, 1, 0, 1, 0, 0, 1, 0,
    0, 0, 0, 1, 0, 0, 1, 0, 1, 1,
    1, 1, 0, 0, 1, 0, 1, 1, 0, 0,
    1, 1, 1, 0, 0, 1, 1, 1, 1, 0,
    1, 0, 1, 1, 1, 1, 1, 0, 0, 1,
    0, 1, 1, 1, 1, 1, 0, 1, 0, 0,
    1, 1, 1, 1, 1, 1, 0, 0, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 0, 0, 1,
    1, 1, 1, 1, 1, 0, 1, 1, 0, 0,
    0, 1, 1, 1, 0, 1, 1, 1, 0, 0
};


int grasshopperSolution[144] = {
    0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0,
    0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1,
    0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1,
    0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1,
    1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1,
    1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0,
    1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1,
    0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0,
    1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0,
    0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0,
    0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1
};

int stagBeetleSolution[144] = {
    0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0,
    0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0,
    0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0,
    0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0,
    0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0,
    1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0,
    1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0,
    0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0
};

int shieldBugSolution[144] = {
    1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0,
    1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0,
    1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0,
    0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0,
    0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0,
    1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0,
    1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0
};

int dragonHeadedCatepillarSolution[144] = {
    0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0,
    1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0,
    1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0,
    1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0,
    0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0,
    0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0,
    0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0,
    1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0,
    0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1
};


int acornWeevilSolution[196] = {
    1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1,
    1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0,
    1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0,
    1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1,
    1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0,
    1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0,
    1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0,
    1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0,
    1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0,
    1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0,
    0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0
};

int rosyMapleMothSolution[196] = {
    0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0,
    0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0,
    0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0,
    0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0,
    1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0,
    1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1,
    0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1,
    1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1,
    0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1,
    1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1
};
