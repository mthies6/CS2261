OBJ_ATTR shadowOAM[128];

typedef enum {UP, RIGHT, DOWN, LEFT} DIRECTION;

//functions prototype 
void initializeGame1();
void initializeGame2();
void updateGame();
void drawGame();
void updatePlayer();
void updateEnemy();
void updateFuel();
void updateScore();
void updateLives();
void releaseSmoke(int x, int y, int direction);
void collisionOccurred();
unsigned char colorAt(int x, int y);

//game info
int seed;
int lives;
int fuel;
int flagsCollected;
int level;
int score;

//enemy info
#define ENEMY_COUNT 3
SPRITE enemyPool[ENEMY_COUNT];
void initializeEnemies();
extern int xEnemySpawn2[15];
extern int yEnemySpawn2[15];

//rock info
#define ROCK_COUNT 3
void initializeRocks();
SPRITE rockPool[ROCK_COUNT];
extern int xRockSpawn2[15];
extern int yRockSpawn2[15];

//flag info
#define FLAG_COUNT 10
void initializeFlags();
SPRITE flagPool[FLAG_COUNT];
extern int xFlagSpawn2[20]; 
extern int yFlagSpawn2[20];

//player info
SPRITE player;
int playerSpawnX;
int playerSpawnY;
int fuel;
int moved;


//smoke info
int smokeFrame;
SPRITE smoke;
