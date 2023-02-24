//player struct
typedef struct {
    int oldX;
    int oldY;
    int x;
    int y;
    unsigned short backgroundColor;
    unsigned short color;
    int ableToShoot;
    int velocity;
} Player;

//enemy struct
typedef struct {
    int oldX;
    int oldY;
    int x;
    int y;
    int active;
    int erased;
} Enemy;

//bullet struct
typedef struct {
    int x; 
    int y;
    int oldX;
    int active;
    int velocity;
} Bullet;

// prototypes
void initializeGame();
void updateGame();
void drawGame();
void initializeEnemy(Enemy *enemyPtr);
void updateEnemy(Enemy* enemyPtr);
void drawEnemy(Enemy* enemyPtr);
void updatePlayer();
void drawPlayer();
void spawnEnemies();
void drawBackground();

//general game info
#define BACKGROUND RGB(31, 25, 15)

int lives, timeSoundPlays, gameStarted;
int zoneX, zoneY, zoneSize, seed;

//player declarations
Player p;
Player *playerPtr; 
#define PLAYER_SIZE 8

//enemy declarations
#define ENEMY_COUNT 50
extern Enemy enemies[ENEMY_COUNT];
#define ENEMY_SIZE 8
int numKilled, numPerSpawn, numOnBoard, maxOnBoard;

//bullet declarations
#define BULLET_COUNT 20
extern Bullet bullets[BULLET_COUNT];



