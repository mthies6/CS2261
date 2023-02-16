#include "gba.h"
#include "print.h"
#include "text.h"
#include "font.h"

//prototypes 
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
        buttons = REG_BUTTONS;
        switch (state) {
            case (START):
                updateStart();
                waitForVBlank();
                drawStart();
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToGame();
                }
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToInstructions();
                }
                break;
            case(GAME):
                updateGame();
                waitForVBlank();
                drawGame();
                if (BUTTON_PRESSED(BUTTON_SELECT)){
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
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToStart();
                }
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToGame();
                }
                break;
            case (WIN):
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToStart();
                }
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToGame();
                }
                break;
            case (LOSE):
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToStart();
                }
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToGame();
                }
                break;
            case (INSTRUCTIONS):
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToStart();
                }
                break;
        }
    }
}

void initialize(){
    REG_DISPCTL = MODE(3) | BG2_ENABLE;
    oldButtons = 0;
    goToStart();
}

void goToGame(){
    fillScreen(BLACK);
    state = GAME;
    if(!gameStarted){
        gameStarted = 1;
        initializeGame();
    } else {
        //keeps previous information if paused and resumed
        drawBackGround();
    }
}

void goToPause(){
    state = PAUSE;
    fillScreen(BLACK);
    //drawRect(119, 0, 2, 160, WHITE);
    drawString(101, 50, "PAUSED", WHITE);
    drawString(40, 80, "Press SELECT to resume game", WHITE);
    drawString(38, 90, "Press START to quit to start", WHITE);
}

void goToWin(){
    fillScreen(BLACK);
    gameStarted = 0;
    state = WIN;
    drawString(96, 46, "YOU WIN!", RGB(15,15,15));
    drawString(95, 45, "YOU WIN!", CYAN);

    drawString(42, 100, "Press SELECT to play again!", RGB(20,20,20));
    drawString(39, 120, "Press START to exit to start", RGB(20,20,20));
}

void goToLose(){
    fillScreen(BLACK);
    gameStarted = 0;
    state = LOSE;
    //drawRect(119, 0, 2, 160, WHITE);
    drawString(96, 46, "YOU LOSE", RGB(10,10,10));
    drawString(95, 45, "YOU LOSE", RED);

    drawString(47, 100, "Press SELECT to try again", RGB(20,20,20));
    drawString(39, 120, "Press START to exit to start", RGB(20,20,20));
}

void goToStart(){
    fillScreen(BLACK);
    state = START;
    gameStarted = 0;
    //title words
    drawString(96, 36, "JezzBall", RGB(10,10,10));
    drawString(95, 35, "JezzBall", MAGENTA);
    drawString(64, 100, "Press START to play!", RGB(20,20,20));
    drawString(37, 120, "Press SELECT for instructions", RGB(20,20,20));

    //ball graphic left
    drawRect(17, 47, 36, 36, WHITE);
    drawRect(18, 48, 34, 34, BLACK);
    drawRect(20, 50, 30, 30, GRAY);
    startBallX1 = 30;
    startBallY1 = 60;
    startBallOldX1 = 30; 
    startBallOldY1 = 60;  

    //ball graphic right
    drawRect(187, 47, 36, 36, WHITE);
    drawRect(188, 48, 34, 34, BLACK);
    drawRect(190, 50, 30, 30, GRAY);
    startBallX2 = 200;
    startBallY2 = 60;
    startBallOldX2 = 30; 
    startBallOldY2 = 60;

    //general ball velocity
    ballVx = 2;
    ballVy = 1;
}

//update ball graphic on start screen
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
    drawRect(startBallOldX1, startBallOldY1, 3, 3, GRAY);
    drawRect(startBallX1, startBallY1, 3, 3, MAGENTA);
    drawRect(startBallOldX2, startBallOldY2, 3, 3, GRAY);
    drawRect(startBallX2, startBallY2, 3, 3, MAGENTA);
}

void goToInstructions(){
    fillScreen(BLACK);
    state = INSTRUCTIONS;
    drawString(85, 10, "Game Controls", WHITE);
    drawString(4, 40, "Press A to draw a line", WHITE);
    drawString(4, 52, "Press UP/DOWN or LEFT/RIGHT to change  direction", WHITE);
    drawString(4, 72, "Press SELECT at anytime to pause game", WHITE);
    drawString(4, 120, "Press START to return to start", WHITE);
}