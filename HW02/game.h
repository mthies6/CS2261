// Function prototypes
void drawBackGround();
void initializeGame();
void updateGame();
void drawGame();

// Player information
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

//variables
int lives, skipFrame, gameStarted;
int ballX, ballY, ballOldX, ballOldY, ballVx, ballVy;
int leftBound, topBound, rightBound, bottomBound, rectHeight, rectWidth, rectArea;
int pLeftBound, pTopBound, pRightBound, pBottomBound, pHeight, pWidth;