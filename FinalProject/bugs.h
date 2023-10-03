extern int blueMorphoSolution[100];
extern int wormSolution[100];
extern int bumbleBeeSolution[100];
extern int prayingMantisSolution[100];
extern int violinBeetleSolution[100];
extern int leafBugSolution[100];

extern int grasshopperSolution[144];
extern int stagBeetleSolution[144];
extern int shieldBugSolution[144];
extern int dragonHeadedCatepillarSolution[144];

extern int acornWeevilSolution[196];
extern int rosyMapleMothSolution[196];

enum bugTypes {BLUEMORPHO, WORM, BUMBLEBEE, MANTIS, VIOLIN, LEAFBUG, GRASSHOPPER, STAG, SHIELD, DRAGON, ACORN, MOTH};
enum rarity {COMMON = 100, UNCOMMON = 144, RARE = 196};

void initializeBugs();

#define BUG_COUNT 12

typedef struct {
    int x;
    int y;
    int width;
    int height;
    int found;
    int *solution;
    int rarity;
    int startX;
    int startY;
    int puzzleWidth;
    int palRow;
} BUG;

extern BUG bugs[BUG_COUNT];