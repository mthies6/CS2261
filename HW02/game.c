#include "gba.h"
#include "print.h"
#include "game.h"
#include "text.h"

Player player;
Player *ptr;

Line currLine;

//prototypes
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
    //player info
    player.x = 41;
    player.y = 1;
    player.oldX = 41;
    player.oldY = 1;
    player.color = GREEN;
    player.direction = HORIZONTAL;
    player.vX = 1;
    player.vY = 1;
    ptr = &player; 

    lives = 3;

    //ball info
    ballX = 120;
    ballY = 80;
    ballOldX = 120; 
    ballOldY = 80;
    ballVx = 2;
    ballVy = 3;

    //play rectangle
    leftBound = 46;
    topBound = 6;
    rectWidth = 149;
    rectHeight = 148;

    drawBackGround();
}

//auto-updates values when redrawn
void drawBackGround(){
    //update main values
    rightBound = leftBound + rectWidth - 1; 
    bottomBound = topBound + rectHeight - 1;
    rectArea = rectWidth * rectHeight;
    mgba_printf("%d", rectArea);

    //player bounds
    pLeftBound = leftBound - 6;
    pTopBound = topBound - 6;
    pWidth = rectWidth + 11;
    pHeight = rectHeight + 11;
    pRightBound = pLeftBound + pWidth;
    pBottomBound = pTopBound + pHeight;
    
    //horizontal lines
    drawRect(pLeftBound, pTopBound, pWidth, 1, WHITE);
    drawRect(pLeftBound, pBottomBound, pWidth + 1, 1, WHITE);

    //vertical lines
    drawRect(pLeftBound, pTopBound, 1, pHeight, WHITE);
    drawRect(pRightBound, pTopBound, 1, pHeight, WHITE);

    //drawn main rectangle
    drawRect(leftBound, topBound, rectWidth, rectHeight, GRAY);
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
    //collisions per line
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
    drawRect(2, 12, 35, 10, BLACK);
    drawBackGround();
}

void updatePlayer(){
    //horizontal movement
    if (ptr->direction == HORIZONTAL){
        if(ptr->y == pTopBound + 1 && BUTTON_PRESSED(BUTTON_A) && currLine.direction == NONE && ptr->x > leftBound && ptr->x < rightBound){
            //info to draw line
            currLine.direction = DOWN;
            currLine.startX = ptr->x; //constant
            currLine.startY = ptr->y + 5;
            currLine.width = 2;
            currLine.height = 0;
            currLine.updated = currLine.startY;
        }
        if(ptr->y == pBottomBound - 5 && BUTTON_PRESSED(BUTTON_A )&& currLine.direction == NONE && ptr->x > leftBound && ptr->x < rightBound){
            //info to draw line
            currLine.direction = UP;
            currLine.startX = ptr->x; //constant
            currLine.startY = ptr->y-1;
            currLine.width = 2;
            currLine.height = 0;
            currLine.updated = currLine.startY;
        }
        //reverse player direction
        if((BUTTON_PRESSED(BUTTON_LEFT) && (ptr->oldX < ptr->x)) || (BUTTON_PRESSED(BUTTON_RIGHT) && (ptr->oldX > ptr->x))) {
            ptr->vX = -ptr->vX;
            ptr->vY = -ptr->vY;
        }
        //basic x direction movement
        if(ptr->x > pLeftBound && ptr->x <= (pRightBound - 5)){
            ptr->oldX = ptr->x;
            if(ptr->y == pTopBound + 1){
                ptr->x += ptr->vX;
            } else {
                ptr->x += -ptr->vX;
            }
        }
        //corner turn horizontal -> vertical
        if (ptr->x == pRightBound - 5 || ptr->x == pLeftBound + 1 ){
            drawRect(rightBound, pTopBound + 1, 1, 5, BLACK);
            drawRect(leftBound, bottomBound + 1, 1, 5, BLACK);
            drawRect(rightBound, bottomBound + 1, 1, 5, BLACK);
            drawRect(leftBound, pTopBound + 1, 1, 5, BLACK);
            ptr->direction = VERTICAL;
            ptr->oldX = ptr->x;
        }
    }
    //vertical movement
    if (ptr->direction == VERTICAL){
        //info to draw line
        if(ptr->x == pLeftBound + 1 && BUTTON_PRESSED(BUTTON_A) && currLine.direction == NONE && ptr->y > topBound && ptr->y < bottomBound){
            currLine.direction = RIGHT;
            currLine.startY = ptr->y; //constant
            currLine.startX = ptr->x + 5;
            currLine.width = 0;
            currLine.height = 2;
            currLine.updated = currLine.startX;
        }
        if(ptr->x == pLeftBound + pWidth - 5 && BUTTON_PRESSED(BUTTON_A) && currLine.direction == NONE && ptr->y > topBound && ptr->y < bottomBound){
            //info to draw line
            currLine.direction = LEFT;
            currLine.startY = ptr->y; //constant
            currLine.startX = ptr->x - 1;
            currLine.width = 0;
            currLine.height = 2;
            currLine.updated = currLine.startX;
        }
        //reverse player direction
        if((BUTTON_PRESSED(BUTTON_UP) && (ptr->oldY < ptr->y)) || (BUTTON_PRESSED(BUTTON_DOWN) && (ptr->oldY > ptr->y))) {
            ptr->vX = -ptr->vX;
            ptr->vY = -ptr->vY;
        }
        //basic y movement
        if(ptr->y > pTopBound && ptr->y <= (pTopBound + pHeight - 5)){
          ptr->oldY = ptr->y;
          if(ptr->x == pLeftBound + 1){
                ptr->y += -ptr->vY;
            } else {
                ptr->y += ptr->vY;
            }
        }
        //corner turn vertical -> horizontal
        if (ptr->y == pBottomBound - 5 || ptr->y == pTopBound + 1){
            drawRect(rightBound + 1, bottomBound, 5, 1, BLACK);
            drawRect(pLeftBound + 1, topBound, 5, 1, BLACK);
            drawRect(rightBound + 1, topBound, 5, 1, BLACK);
            drawRect(pLeftBound + 1, bottomBound, 5, 1, BLACK);
            ptr->oldY = ptr->y;
            ptr->direction = HORIZONTAL; 
        }
    }
}

void drawPlayer() {
    drawRect(ptr->oldX, ptr->oldY, 5, 5, BLACK);
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
    drawRect(ballOldX, ballOldY, 5, 5, GRAY);
    drawRect(ballX, ballY, 5, 5, MAGENTA);
}

void drawLives(){
    drawString(2, 2, "Lives:", WHITE);
    for (int i = 0; i < lives; i++){
        drawRect(2 + (i * 12), 12, 10, 10, MAGENTA);
    }
}

void drawLine(){
    switch (currLine.direction){
        case DOWN:
            drawRect(currLine.startX, currLine.updated, 2, 1, CYAN);
            currLine.updated++;
            currLine.height++;
            //if line completes, cut rectangle
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
            drawRect(currLine.startX, currLine.updated, 2, 1, CYAN);
            currLine.updated--;
            currLine.height++;
            //if line completes, cut rectangle
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
            drawRect(currLine.updated, currLine.startY, 1, 2, CYAN);
            currLine.updated++;
            currLine.width++;
            //if line completes, cut rectangle
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
            drawRect(currLine.updated, currLine.startY, 1, 2, CYAN);
            currLine.updated--;
            currLine.width++;
            //if line completes, cut rectangle
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
    drawRect(currLine.startX, pTopBound, pRightBound - currLine.startX + 1, pHeight + 1, BLACK);
    drawBackGround();
    if (ptr->x > currLine.startX){
        pOutOfBounds();
    }
    clearLine();
}

void cutRectLeft(){
    rectWidth = rightBound - currLine.startX + 1;
    leftBound = currLine.startX;
    drawRect(pLeftBound, pTopBound, (leftBound - pLeftBound), pHeight + 1, BLACK);
    drawBackGround();
    if (ptr->x < leftBound){
        pOutOfBounds();
    }
    clearLine();
}

void cutRectBottom(){
    rectHeight = currLine.startY - topBound;
    drawRect(pLeftBound, currLine.startY, pWidth + 1, pBottomBound - currLine.startY + 1, BLACK);
    drawBackGround();
    if (ptr->y > bottomBound){
        pOutOfBounds();
    }
    clearLine();
}

void cutRectTop(){
    rectHeight = bottomBound - currLine.startY + 1;
    topBound = currLine.startY;
    drawRect(pLeftBound, pTopBound, pWidth + 1, topBound - pTopBound, BLACK);
    drawBackGround();
    if (ptr->y < topBound){
        pOutOfBounds();
    }
    clearLine();
}

//when the player is in the perimeter that us cut
void pOutOfBounds(){
    drawRect(ptr->oldX, ptr->oldY, 5, 5, BLACK);
    ptr->oldX = leftBound;
    ptr->oldY = pTopBound + 1;
    ptr->x = leftBound;
    ptr->y = pTopBound + 1;
    ptr->direction = HORIZONTAL;
    drawBackGround();
}

//reset curr line
void clearLine(){
    currLine.direction = NONE;
    currLine.startX = 0;
    currLine.startY = 0;
    currLine.width = 0;
    currLine.height = 0;
}
