#include "gba.h"
#include "print.h"
#include "text.h"
#include "font.h"

//prototypes 
void draw();
void start();
void pause();
void initialize();

enum {
    START = 0,
    GAME = 1,
    PAUSE = 2,
    WIN = 3,
    LOSE = 4,
};

state = START;

u16 oldButtons; 

int main() {
    mgba_open();

    initialize();

    while(1) {
        oldButtons = REG_BUTTONS;
        switch (state) {
            case (START):
                start();
                waitForVBlank();
                if (BUTTON_PRESSED(BUTTON_START)){
                    goToGame();
                }    
                break;
            case(GAME):
                game();
                waitForVBlank();
                if (BUTTON_PRESSED(BUTTON_SELECT)){
                    goToPause();
                }
            case (PAUSE): 
                waitForVBlank();  
                pause();
                break;
            case (WIN):
                waitForVBlank();
                break;
            case (LOSE):
                waitForVBlank();
                break;
        }
        draw();
    }
}

void initialize(){
    REG_DISPCTL = MODE(3) | BG2_ENABLE;

    oldButtons = 0;

    player.x = 0;
    player.y = 0;
    player.oldX = 0;
    player.oldY = 0;
    player.color = RED;
    player.width = 3;
    player.height = 3;

    ptr = &player; 
}

void start(){
    drawString(10, 10, "Heyyy", WHITE);
}

void draw(){
    
}

void pause() {
    drawString(80, 10, "PAUSED", WHITE);
    drawString(15, 90, "Press SELECT to continue", WHITE);
    drawString(15, 100, "Press START to quit", WHITE);
}

void goToGame() {
    fillScreen(BLACK);
    state = GAME;
}

void goToPause() {
    state = PAUSE;
    fillScreen(BLACK);
}

void goToWin() {
    state = WIN;
}

void goToLose() {
    state = LOSE;
}

void goToStart() {
    state = START;
}