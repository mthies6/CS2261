#include "gba.h"
#include "print.h"

extern unsigned short* videoBuffer;

//prototypes
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
        buttons = REG_BUTTONS;
        
        update();
        waitForVBlank();
        draw(); 
    }
}


void initialize() {
    REG_DISPCTL = MODE(3) | BG2_ENABLE;
    //bodySize = 64;
    bodyColor = COLOR(10, 6, 13);
    eyeColor = COLOR(16, 6, 3);
    tongueColor = COLOR(31, 18, 20);
    isLooping = 0; 
    currentFrame = 0;
    oldButtons = 0;
    buttons = REG_BUTTONS;
    fillScreen(bodyColor);
    skipAmount = 30;
    loopForward = 1;
    speedCount = 3;
    skipFrameCount = 0;
}

void update(){
    if(BUTTON_PRESSED(BUTTON_START)) {
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
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        if(!isLooping) {
            isLooping = 1;
        }
        loopForward = !loopForward;
    }
    if(BUTTON_PRESSED(BUTTON_A)){
        if (currentFrame == 3) {
            currentFrame = 0;
        } else {
            currentFrame++;
        }
    }
    if (BUTTON_PRESSED(BUTTON_B)){
        if (currentFrame == 0) {
            currentFrame = 3;
        } else {
            currentFrame--;
        }
    }
    if (BUTTON_PRESSED(BUTTON_LEFT)){
        currentFrame = 0;
    }
    if (BUTTON_PRESSED(BUTTON_RIGHT)){
        currentFrame = 3;
    } 
    if (BUTTON_PRESSED(BUTTON_UP) && speedCount < 5 && isLooping){
        speedCount++;
        skipAmount /= 2;
    }
    if (BUTTON_PRESSED(BUTTON_DOWN) && speedCount > 1 && isLooping){
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
    //body
    // drawRect(85, 45, bodySize, bodySize, bodyColor);

    // //left arm
    // drawRect(63, 69, 22, 12, bodyColor);
    // drawRect(57, 67, 12, 8, bodyColor);
    // drawRect(78, 69, 7, 2, BLACK);
    // drawRect(63, 77, 7, 4, BLACK);

    // //right arm
    // drawRect(149, 66, 22, 12, bodyColor);
    // drawRect(165, 64, 12, 8, bodyColor);
    // drawRect(149, 66, 7, 2, BLACK);
    // drawRect(164, 74, 7, 4, BLACK);

    // //left foot
    // drawRect(92, 109, 20, 12, bodyColor);
    // drawRect(89, 117, 15, 7, bodyColor);

    // //right foot
    // drawRect(125, 107, 20, 12, bodyColor);
    // drawRect(132, 115, 15, 7, bodyColor);

    // //left horn
    // drawRect(82, 38, 15, 10, bodyColor);
    // drawRect(73, 35, 14, 5, bodyColor);

    // //right horn
    // drawRect(136, 38, 15, 10, bodyColor);
    // drawRect(147, 35, 14, 5, bodyColor);

    //left eye
    drawRect(92, 60, 10, 10, eyeColor);
    drawRect(97, 65, 10, 10, eyeColor);
    drawRect(100, 63, 5, 5, BLACK);
    drawRect(92, 59, 10, 2, BLACK);
    drawRect(101, 61, 3, 2, BLACK);
    drawRect(103, 63, 4, 2, BLACK);
    drawRect(107, 65, 2, 5, BLACK);

    //right eye
    drawRect(126, 60, 10, 10, eyeColor);
    drawRect(121, 65, 10, 10, eyeColor);
    drawRect(123, 63, 5, 5, BLACK);
    drawRect(126, 59, 10, 2, BLACK);
    drawRect(124, 61, 3, 2, BLACK);
    drawRect(121, 63, 4, 2, BLACK);
    drawRect(119, 65, 2, 5, BLACK);

    //smile
    drawRect(95, 84, 40, 6, WHITE);
    drawRect(91, 80, 4, 4, WHITE);
    drawRect(135, 80, 4, 4, WHITE);
    drawRect(101, 90, 28, 4, WHITE);
    drawRect(104, 84, 2, 10, BLACK);
    drawRect(114, 84, 2, 10, BLACK);
    drawRect(124, 84, 2, 10, BLACK);
}

void frameTwo(){
    drawRect(168, 45, 24, 24, bodyColor);
    // //body
    // drawRect(85, 45, bodySize, bodySize, bodyColor);

    // //left arm
    // drawRect(63, 69, 22, 12, bodyColor);
    // drawRect(57, 67, 12, 8, bodyColor);
    // drawRect(78, 69, 7, 2, BLACK);
    // drawRect(63, 77, 7, 4, BLACK);

    // //right arm
    // drawRect(149, 66, 22, 12, bodyColor);
    // drawRect(165, 64, 12, 8, bodyColor);
    // drawRect(149, 66, 7, 2, BLACK);
    // drawRect(164, 74, 7, 4, BLACK);

    // //left foot
    // drawRect(92, 109, 20, 12, bodyColor);
    // drawRect(89, 117, 15, 7, bodyColor);

    // //right foot
    // drawRect(125, 107, 20, 12, bodyColor);
    // drawRect(132, 115, 15, 7, bodyColor);

    // //left horn
    // drawRect(82, 38, 15, 10, bodyColor);
    // drawRect(73, 35, 14, 5, bodyColor);

    // //right horn
    // drawRect(136, 38, 15, 10, bodyColor);
    // drawRect(147, 35, 14, 5, bodyColor);

    //left eye
    drawRect(92, 60, 10, 10, eyeColor);
    drawRect(97, 65, 10, 10, eyeColor);
    drawRect(100, 63, 5, 5, BLACK);
    drawRect(92, 59, 10, 2, BLACK);
    drawRect(101, 61, 3, 2, BLACK);
    drawRect(103, 63, 4, 2, BLACK);
    drawRect(107, 65, 2, 5, BLACK);

    //right eye
    drawRect(126, 60, 10, 10, eyeColor);
    drawRect(121, 65, 10, 10, eyeColor);
    drawRect(123, 63, 5, 5, BLACK);
    drawRect(126, 59, 10, 2, BLACK);
    drawRect(124, 61, 3, 2, BLACK);
    drawRect(121, 63, 4, 2, BLACK);
    drawRect(119, 65, 2, 5, BLACK);

    //mouth with tounge
    drawRect(95, 84, 40, 3, WHITE);
    drawRect(95, 87, 40, 3, BLACK);
    drawRect(91, 80, 4, 4, WHITE);
    drawRect(135, 80, 4, 4, WHITE);
    drawRect(101, 90, 28, 4, BLACK);
    drawRect(104, 84, 2, 10, BLACK);
    drawRect(114, 84, 2, 10, BLACK);
    drawRect(124, 84, 2, 10, BLACK);
    drawRect(105, 90, 20, 15, tongueColor);
}

void frameThree(){
    drawRect(168, 45, 24, 24, bodyColor);
    // //body
    // drawRect(85, 45, bodySize, bodySize, bodyColor);

    // //left arm
    // drawRect(63, 69, 22, 12, bodyColor);
    // drawRect(57, 67, 12, 8, bodyColor);
    // drawRect(78, 69, 7, 2, BLACK);
    // drawRect(63, 77, 7, 4, BLACK);

    // //right arm
    // drawRect(149, 66, 22, 12, bodyColor);
    // drawRect(165, 64, 12, 8, bodyColor);
    // drawRect(149, 66, 7, 2, BLACK);
    // drawRect(164, 74, 7, 4, BLACK);

    // //left foot
    // drawRect(92, 109, 20, 12, bodyColor);
    // drawRect(89, 117, 15, 7, bodyColor);

    // //right foot
    // drawRect(125, 107, 20, 12, bodyColor);
    // drawRect(132, 115, 15, 7, bodyColor);

    // //left horn
    // drawRect(82, 38, 15, 10, bodyColor);
    // drawRect(73, 35, 14, 5, bodyColor);

    // //right horn
    // drawRect(136, 38, 15, 10, bodyColor);
    // drawRect(147, 35, 14, 5, bodyColor);

    //left eye
    drawRect(92, 60, 10, 10, eyeColor);
    drawRect(97, 65, 10, 10, eyeColor);
    drawRect(100, 63, 5, 5, BLACK);
    drawRect(92, 59, 10, 2, BLACK);
    drawRect(101, 61, 3, 2, BLACK);
    drawRect(103, 63, 4, 2, BLACK);
    drawRect(107, 65, 2, 5, BLACK);

    //right eye
    drawRect(126, 60, 10, 10, eyeColor);
    drawRect(121, 65, 10, 10, eyeColor);
    drawRect(123, 63, 5, 5, BLACK);
    drawRect(126, 59, 10, 2, BLACK);
    drawRect(124, 61, 3, 2, BLACK);
    drawRect(121, 63, 4, 2, BLACK);
    drawRect(119, 65, 2, 5, BLACK);

    //mouth with tounge
    drawRect(95, 84, 40, 3, WHITE);
    drawRect(95, 87, 40, 3, BLACK);
    drawRect(91, 80, 4, 4, WHITE);
    drawRect(135, 80, 4, 4, WHITE);
    drawRect(101, 90, 28, 4, BLACK);
    drawRect(104, 84, 2, 10, BLACK);
    drawRect(114, 84, 2, 10, BLACK);
    drawRect(124, 84, 2, 10, BLACK);
    drawRect(105, 90, 20, 15, tongueColor);

    //shadow ball
    drawRect(175, 50, 10, 14, WHITE);
    drawRect(173, 52, 14, 10, WHITE);
    drawRect(175, 52, 10, 10, GRAY);
    drawRect(177, 54, 6, 6, BLACK);
}

void frameFour(){
    drawRect(168, 45, 24, 24, bodyColor);
    drawRect(105, 94, 20, 11, bodyColor);
    //body
    // drawRect(85, 45, bodySize, bodySize, bodyColor);

    // //left arm
    // drawRect(63, 69, 22, 12, bodyColor);
    // drawRect(57, 67, 12, 8, bodyColor);
    // drawRect(78, 69, 7, 2, BLACK);
    // drawRect(63, 77, 7, 4, BLACK);

    // //right arm
    // drawRect(149, 66, 22, 12, bodyColor);
    // drawRect(165, 64, 12, 8, bodyColor);
    // drawRect(149, 66, 7, 2, BLACK);
    // drawRect(164, 74, 7, 4, BLACK);

    // //left foot
    // drawRect(92, 109, 20, 12, bodyColor);
    // drawRect(89, 117, 15, 7, bodyColor);

    // //right foot
    // drawRect(125, 107, 20, 12, bodyColor);
    // drawRect(132, 115, 15, 7, bodyColor);

    // //left horn
    // drawRect(82, 38, 15, 10, bodyColor);
    // drawRect(73, 35, 14, 5, bodyColor);

    // //right horn
    // drawRect(136, 38, 15, 10, bodyColor);
    // drawRect(147, 35, 14, 5, bodyColor);

    //left eye
    drawRect(92, 60, 10, 10, eyeColor);
    drawRect(97, 65, 10, 10, eyeColor);
    drawRect(100, 63, 5, 5, BLACK);
    drawRect(92, 59, 10, 2, BLACK);
    drawRect(101, 61, 3, 2, BLACK);
    drawRect(103, 63, 4, 2, BLACK);
    drawRect(107, 65, 2, 5, BLACK);

    //right eye
    drawRect(126, 60, 10, 10, eyeColor);
    drawRect(121, 65, 10, 10, eyeColor);
    drawRect(123, 63, 5, 5, BLACK);
    drawRect(126, 59, 10, 2, BLACK);
    drawRect(124, 61, 3, 2, BLACK);
    drawRect(121, 63, 4, 2, BLACK);
    drawRect(119, 65, 2, 5, BLACK);

    //smile
    drawRect(95, 84, 40, 6, WHITE);
    drawRect(91, 80, 4, 4, WHITE);
    drawRect(135, 80, 4, 4, WHITE);
    drawRect(101, 90, 28, 4, WHITE);
    drawRect(104, 84, 2, 10, BLACK);
    drawRect(114, 84, 2, 10, BLACK);
    drawRect(124, 84, 2, 10, BLACK);

    //shadow ball
    drawRect(170, 45, 20, 24, GRAY);
    drawRect(168, 47, 24, 20, GRAY);
    drawRect(171, 48, 18, 18, BLACK);
    drawRect(174, 51, 12, 12, bodyColor);
    drawRect(177, 54, 6, 6, MAGENTA);
}