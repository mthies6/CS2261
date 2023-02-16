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
# 2 "game.c" 2
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
# 3 "game.c" 2
# 1 "game.h" 1

void drawBackGround();
void initializeGame();
void updateGame();
void drawGame();


typedef struct player {
    int x;
    int y;
    int oldX;
    int oldY;
    u16 color;
    int direction;
    int vX;
    int vY;
} Player;

typedef struct line {
    int startX;
    int startY;
    int updated;
    int width;
    int height;
    int direction;
} Line;


int lives, skipFrame, gameStarted;
int ballX, ballY, ballOldX, ballOldY, ballVx, ballVy;
int leftBound, topBound, rightBound, bottomBound, rectHeight, rectWidth, rectArea;
int pLeftBound, pTopBound, pRightBound, pBottomBound, pHeight, pWidth;
# 4 "game.c" 2
# 1 "text.h" 1

void drawChar(int x, int y, char ch, unsigned short color);
void drawString(int x, int y, char *str, unsigned short color);
# 5 "game.c" 2

Player player;
Player *ptr;

Line currLine;


void updatePlayer();
void drawPlayer();
void updateBall();
void drawBall();
void drawLine();
void drawLives();
void cutRectRight();
void cutRectLeft();
void cutRectTop();
void cutRectBottom();
void pOutOfBounds();
void clearLine();
void collisionOccurred();

enum {HORIZONTAL, VERTICAL};
enum {NONE, UP, DOWN, RIGHT, LEFT};

void initializeGame(){

    player.x = 41;
    player.y = 1;
    player.oldX = 41;
    player.oldY = 1;
    player.color = ((0&31) | (31&31) << 5 | (0&31) << 10);
    player.direction = HORIZONTAL;
    player.vX = 1;
    player.vY = 1;
    ptr = &player;

    lives = 3;


    ballX = 120;
    ballY = 80;
    ballOldX = 120;
    ballOldY = 80;
    ballVx = 2;
    ballVy = 3;


    leftBound = 46;
    topBound = 6;
    rectWidth = 149;
    rectHeight = 148;

    drawBackGround();
}


void drawBackGround(){

    rightBound = leftBound + rectWidth - 1;
    bottomBound = topBound + rectHeight - 1;
    rectArea = rectWidth * rectHeight;
    mgba_printf("%d", rectArea);


    pLeftBound = leftBound - 6;
    pTopBound = topBound - 6;
    pWidth = rectWidth + 11;
    pHeight = rectHeight + 11;
    pRightBound = pLeftBound + pWidth;
    pBottomBound = pTopBound + pHeight;


    drawRect(pLeftBound, pTopBound, pWidth, 1, ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawRect(pLeftBound, pBottomBound, pWidth + 1, 1, ((31&31) | (31&31) << 5 | (31&31) << 10));


    drawRect(pLeftBound, pTopBound, 1, pHeight, ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawRect(pRightBound, pTopBound, 1, pHeight, ((31&31) | (31&31) << 5 | (31&31) << 10));


    drawRect(leftBound, topBound, rectWidth, rectHeight, ((15&31) | (15&31) << 5 | (15&31) << 10));
}

void updateGame(){
    updatePlayer();
    skipFrame++;
    if (skipFrame == 3){
        updateBall();
        skipFrame = 0;
    }
}

void drawGame(){
    drawBall();
    drawPlayer();
    drawLine();

    switch (currLine.direction){
        case (UP):
            if(collision(ballX, ballY, 5, 5, currLine.startX, (currLine.startY - currLine.height), currLine.width, currLine.height)){
                collisionOccurred();
            }
            break;
        case (LEFT):
            if(collision(ballX, ballY, 5, 5, (currLine.startX - currLine.width), currLine.startY, currLine.width, currLine.height)){
                collisionOccurred();
            }
            break;
        default:
            if(collision(ballX, ballY, 5, 5, currLine.startX, currLine.startY, currLine.width, currLine.height)){
                collisionOccurred();
            }
            break;
    }
    drawLives();
}

void collisionOccurred(){
    mgba_printf("collision");
    lives--;
    clearLine();
    drawRect(2, 12, 35, 10, ((0&31) | (0&31) << 5 | (0&31) << 10));
    drawBackGround();
}

void updatePlayer(){

    if (ptr->direction == HORIZONTAL){
        if(ptr->y == pTopBound + 1 && (!(~(oldButtons) & ((1<<0))) && (~buttons & ((1<<0)))) && currLine.direction == NONE && ptr->x > leftBound && ptr->x < rightBound){

            currLine.direction = DOWN;
            currLine.startX = ptr->x;
            currLine.startY = ptr->y + 5;
            currLine.width = 2;
            currLine.height = 0;
            currLine.updated = currLine.startY;
        }
        if(ptr->y == pBottomBound - 5 && (!(~(oldButtons) & ((1<<0))) && (~buttons & ((1<<0))))&& currLine.direction == NONE && ptr->x > leftBound && ptr->x < rightBound){

            currLine.direction = UP;
            currLine.startX = ptr->x;
            currLine.startY = ptr->y-1;
            currLine.width = 2;
            currLine.height = 0;
            currLine.updated = currLine.startY;
        }

        if(((!(~(oldButtons) & ((1<<5))) && (~buttons & ((1<<5)))) && (ptr->oldX < ptr->x)) || ((!(~(oldButtons) & ((1<<4))) && (~buttons & ((1<<4)))) && (ptr->oldX > ptr->x))) {
            ptr->vX = -ptr->vX;
            ptr->vY = -ptr->vY;
        }

        if(ptr->x > pLeftBound && ptr->x <= (pRightBound - 5)){
            ptr->oldX = ptr->x;
            if(ptr->y == pTopBound + 1){
                ptr->x += ptr->vX;
            } else {
                ptr->x += -ptr->vX;
            }
        }

        if (ptr->x == pRightBound - 5 || ptr->x == pLeftBound + 1 ){
            drawRect(rightBound, pTopBound + 1, 1, 5, ((0&31) | (0&31) << 5 | (0&31) << 10));
            drawRect(leftBound, bottomBound + 1, 1, 5, ((0&31) | (0&31) << 5 | (0&31) << 10));
            drawRect(rightBound, bottomBound + 1, 1, 5, ((0&31) | (0&31) << 5 | (0&31) << 10));
            drawRect(leftBound, pTopBound + 1, 1, 5, ((0&31) | (0&31) << 5 | (0&31) << 10));
            ptr->direction = VERTICAL;
            ptr->oldX = ptr->x;
        }
    }

    if (ptr->direction == VERTICAL){

        if(ptr->x == pLeftBound + 1 && (!(~(oldButtons) & ((1<<0))) && (~buttons & ((1<<0)))) && currLine.direction == NONE && ptr->y > topBound && ptr->y < bottomBound){
            currLine.direction = RIGHT;
            currLine.startY = ptr->y;
            currLine.startX = ptr->x + 5;
            currLine.width = 0;
            currLine.height = 2;
            currLine.updated = currLine.startX;
        }
        if(ptr->x == pLeftBound + pWidth - 5 && (!(~(oldButtons) & ((1<<0))) && (~buttons & ((1<<0)))) && currLine.direction == NONE && ptr->y > topBound && ptr->y < bottomBound){

            currLine.direction = LEFT;
            currLine.startY = ptr->y;
            currLine.startX = ptr->x - 1;
            currLine.width = 0;
            currLine.height = 2;
            currLine.updated = currLine.startX;
        }

        if(((!(~(oldButtons) & ((1<<6))) && (~buttons & ((1<<6)))) && (ptr->oldY < ptr->y)) || ((!(~(oldButtons) & ((1<<7))) && (~buttons & ((1<<7)))) && (ptr->oldY > ptr->y))) {
            ptr->vX = -ptr->vX;
            ptr->vY = -ptr->vY;
        }

        if(ptr->y > pTopBound && ptr->y <= (pTopBound + pHeight - 5)){
          ptr->oldY = ptr->y;
          if(ptr->x == pLeftBound + 1){
                ptr->y += -ptr->vY;
            } else {
                ptr->y += ptr->vY;
            }
        }

        if (ptr->y == pBottomBound - 5 || ptr->y == pTopBound + 1){
            drawRect(rightBound + 1, bottomBound, 5, 1, ((0&31) | (0&31) << 5 | (0&31) << 10));
            drawRect(pLeftBound + 1, topBound, 5, 1, ((0&31) | (0&31) << 5 | (0&31) << 10));
            drawRect(rightBound + 1, topBound, 5, 1, ((0&31) | (0&31) << 5 | (0&31) << 10));
            drawRect(pLeftBound + 1, bottomBound, 5, 1, ((0&31) | (0&31) << 5 | (0&31) << 10));
            ptr->oldY = ptr->y;
            ptr->direction = HORIZONTAL;
        }
    }
}

void drawPlayer() {
    drawRect(ptr->oldX, ptr->oldY, 5, 5, ((0&31) | (0&31) << 5 | (0&31) << 10));
    drawRect(ptr->x, ptr->y, 5, 5, ptr->color);
}

void updateBall(){
    ballOldX = ballX;
    ballOldY = ballY;
    ballX += ballVx;
    ballY += ballVy;

    if(ballX < leftBound + 2){
        ballVx = -ballVx;
    }
    if (ballX > (rightBound - 7)){
        ballVx = -ballVx;
    }
    if (ballY < topBound + 3){
        ballVy = -ballVy;
    }
    if (ballY > (bottomBound - 7)){
        ballVy = -ballVy;
    }
}

void drawBall(){
    drawRect(ballOldX, ballOldY, 5, 5, ((15&31) | (15&31) << 5 | (15&31) << 10));
    drawRect(ballX, ballY, 5, 5, ((31&31) | (0&31) << 5 | (31&31) << 10));
}

void drawLives(){
    drawString(2, 2, "Lives:", ((31&31) | (31&31) << 5 | (31&31) << 10));
    for (int i = 0; i < lives; i++){
        drawRect(2 + (i * 12), 12, 10, 10, ((31&31) | (0&31) << 5 | (31&31) << 10));
    }
}

void drawLine(){
    switch (currLine.direction){
        case DOWN:
            drawRect(currLine.startX, currLine.updated, 2, 1, ((0&31) | (31&31) << 5 | (31&31) << 10));
            currLine.updated++;
            currLine.height++;

            if (currLine.height == rectHeight && ballX < currLine.startX){
                currLine.direction = NONE;
                cutRectRight();
            }
            if (currLine.height == rectHeight && ballX > currLine.startX){
                currLine.direction = NONE;
                cutRectLeft();
            }
            break;
        case UP:
            drawRect(currLine.startX, currLine.updated, 2, 1, ((0&31) | (31&31) << 5 | (31&31) << 10));
            currLine.updated--;
            currLine.height++;

            if (currLine.height == rectHeight && ballX < currLine.startX){
                currLine.direction = NONE;
                cutRectRight();
            }
            if (currLine.height == rectHeight && ballX > currLine.startX){
                currLine.direction = NONE;
                cutRectLeft();
            }
            break;
        case RIGHT:
            drawRect(currLine.updated, currLine.startY, 1, 2, ((0&31) | (31&31) << 5 | (31&31) << 10));
            currLine.updated++;
            currLine.width++;

            if (currLine.width == rectWidth && ballY < currLine.startY){
                currLine.direction = NONE;
                cutRectBottom();
            }
            if (currLine.width == rectWidth && ballY > currLine.startY){
                currLine.direction = NONE;
                cutRectTop();
            }
            break;
        case LEFT:
            drawRect(currLine.updated, currLine.startY, 1, 2, ((0&31) | (31&31) << 5 | (31&31) << 10));
            currLine.updated--;
            currLine.width++;

            if (currLine.width == rectWidth && ballY < currLine.startY){
                currLine.direction = NONE;
                cutRectBottom();
            }
            if (currLine.width == rectWidth && ballY > currLine.startY){
                currLine.direction = NONE;
                cutRectTop();
            }
            break;
        default:
            break;
    }
}

void cutRectRight(){
    rectWidth = currLine.startX - leftBound;
    drawRect(currLine.startX, pTopBound, pRightBound - currLine.startX + 1, pHeight + 1, ((0&31) | (0&31) << 5 | (0&31) << 10));
    drawBackGround();
    if (ptr->x > currLine.startX){
        pOutOfBounds();
    }
    clearLine();
}

void cutRectLeft(){
    rectWidth = rightBound - currLine.startX + 1;
    leftBound = currLine.startX;
    drawRect(pLeftBound, pTopBound, (leftBound - pLeftBound), pHeight + 1, ((0&31) | (0&31) << 5 | (0&31) << 10));
    drawBackGround();
    if (ptr->x < leftBound){
        pOutOfBounds();
    }
    clearLine();
}

void cutRectBottom(){
    rectHeight = currLine.startY - topBound;
    drawRect(pLeftBound, currLine.startY, pWidth + 1, pBottomBound - currLine.startY + 1, ((0&31) | (0&31) << 5 | (0&31) << 10));
    drawBackGround();
    if (ptr->y > bottomBound){
        pOutOfBounds();
    }
    clearLine();
}

void cutRectTop(){
    rectHeight = bottomBound - currLine.startY + 1;
    topBound = currLine.startY;
    drawRect(pLeftBound, pTopBound, pWidth + 1, topBound - pTopBound, ((0&31) | (0&31) << 5 | (0&31) << 10));
    drawBackGround();
    if (ptr->y < topBound){
        pOutOfBounds();
    }
    clearLine();
}


void pOutOfBounds(){
    drawRect(ptr->oldX, ptr->oldY, 5, 5, ((0&31) | (0&31) << 5 | (0&31) << 10));
    ptr->oldX = leftBound;
    ptr->oldY = pTopBound + 1;
    ptr->x = leftBound;
    ptr->y = pTopBound + 1;
    ptr->direction = HORIZONTAL;
    drawBackGround();
}


void clearLine(){
    currLine.direction = NONE;
    currLine.startX = 0;
    currLine.startY = 0;
    currLine.width = 0;
    currLine.height = 0;
}
