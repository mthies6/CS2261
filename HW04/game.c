#include "game.h"
#include "gba.h"
#include "rocket2.h"
#include "mode4.h"
#include "alien.h"

char buffer[20];
char buffer2[20];
int seed; 

//restart game after win/lose/quit to start
void initializeGame(){
    seed++;
    srand(seed);
    gameStarted = 1;
    score = 0;

    p1.x = 80;
    p1.y = 120;
    p1.velocity = 1;

    DMANow(3, rocket2Pal, PALETTE, 256);
    PALETTE[48] = WHITE;


    for(int i = 0; i < BULLET_COUNT; i++){
        bullets[i].active = 0;
    }

    initializeEnemy();
    lowestY = 58;
}

//updates game elements
void updateGame(){
    if (lowestY >= p1.y){
        lost = 1;
    }
    updatePlayer();
    updateEnemy();
}

//draws game elements
void drawGame(){
    fillScreen4(0);
    drawPlayer();
    drawEnemy();
    drawString4(170, 2, "Score:", 8);
    sprintf(buffer, "%d", score);
    drawString4(210, 2, buffer, 8);
}