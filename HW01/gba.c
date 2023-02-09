#include "gba.h"

volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

void drawRect(int x, int y, int width, int height, unsigned short color) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            setPixel(x + j, y + i, color);
        }
    }
}

void fillScreen(unsigned short color) {
    // TODO: complete this function from Lab02!
    for (int i = 0; i < 38400; i++) {
        setPixel(i % 240, i / 240, color);
    }
}

void waitForVBlank() {
    while (REG_VCOUNT >= 160);
    while (REG_VCOUNT < 160);
}