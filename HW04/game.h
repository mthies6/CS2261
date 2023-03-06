//player struct
typedef struct {
    int x;
    int y;
    unsigned short backgroundColor;
    unsigned short color;
    int ableToShoot;
    int velocity;
} Player;

//enemy struct
typedef struct {
    int x;
    int y;
    int active;
} Enemy;

//bullet struct
typedef struct {
    int x; 
    int y;
    int active;
    int velocity;
} Bullet;

//prototypes
void drawBackground();
void initializeGame();
void updateGame();
void drawGame();
void updatePlayer();
void drawPlayer();
void updateEnemy();
void drawEnemy();
void initializeEnemy();
void antiBullet(Bullet *b, int x, int y);



//player declarations
Player p1;
#define PLAYER_SIZE 12

//enemy declarations
#define ENEMY_COUNT 40
extern Enemy enemies[ENEMY_COUNT];
#define ENEMY_SIZE 12

//bullet declarations
#define BULLET_COUNT 10
extern Bullet bullets[BULLET_COUNT];

//game stuff
int gameStarted, score, lost, lowestY;