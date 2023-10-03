# 1 "game1.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game1.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;






extern volatile unsigned short *videoBuffer;
# 38 "gba.h"
void waitForVBlank();
# 55 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 71 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 103 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 2 "game1.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct { u16 tileData[16]; } TILE;
typedef TILE charblock[512];



typedef struct {
 u16 tilemap[1024];
} screenblock;
# 3 "game1.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 63 "sprites.h"
void hideSprites();


typedef struct {
    int x;
    int y;
    int xDel;
    int yDel;
    int width;
    int height;
    int framesPassed;
    int direction;
    int aniState;
    int aniFrame;
    int numFrames;
    int hide;
    int lucky;
    int special;
} SPRITE;
# 4 "game1.c" 2
# 1 "tileset.h" 1
# 9 "tileset.h"
extern const unsigned short tilesetTiles[384];


extern const unsigned short tilesetPal[16];
# 5 "game1.c" 2
# 1 "level1Map.h" 1







extern const unsigned short level1MapMap[4096];
# 6 "game1.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 7 "game1.c" 2
# 1 "game.h" 1
OBJ_ATTR shadowOAM[128];

typedef enum {UP, RIGHT, DOWN, LEFT} DIRECTION;


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


int seed;
int lives;
int fuel;
int flagsCollected;
int level;
int score;



SPRITE enemyPool[3];
void initializeEnemies();
extern int xEnemySpawn2[15];
extern int yEnemySpawn2[15];



void initializeRocks();
SPRITE rockPool[3];
extern int xRockSpawn2[15];
extern int yRockSpawn2[15];



void initializeFlags();
SPRITE flagPool[10];
extern int xFlagSpawn2[20];
extern int yFlagSpawn2[20];


SPRITE player;
int playerSpawnX;
int playerSpawnY;
int fuel;
int moved;



int smokeFrame;
SPRITE smoke;
# 8 "game1.c" 2
# 1 "collision1.h" 1
# 21 "collision1.h"
extern const unsigned short collision1Bitmap[131072];


extern const unsigned short collision1Pal[256];
# 9 "game1.c" 2
# 1 "collision2.h" 1
# 21 "collision2.h"
extern const unsigned short collision2Bitmap[131072];


extern const unsigned short collision2Pal[256];
# 10 "game1.c" 2
# 1 "print.h" 1
# 25 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 11 "game1.c" 2
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 47 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 143 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4

# 143 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 48 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3






typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 25 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3






typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 26 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;
# 50 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef int __pid_t;







typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;
# 88 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;
# 129 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 350 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;


typedef __builtin_va_list __va_list;
# 16 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 610 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

  void *deviceData;
};
# 817 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3



# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 17 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3


# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/time.h" 1 3
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 1 3
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef int register_t;
# 62 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 63 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 113 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;





typedef __int_least64_t time_t;





typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 173 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;




typedef __suseconds_t suseconds_t;



typedef __int64_t sbintime_t;


# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_pthreadtypes.h" 1 3
# 240 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/types.h" 1 3
# 241 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/timespec.h" 1 3
# 38 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/timespec.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_timespec.h" 1 3
# 45 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/timespec.h" 2 3
# 58 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 30 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3







struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;






};

clock_t clock (void);
double difftime (time_t _time2, time_t _time1);
time_t mktime (struct tm *_timeptr);
time_t time (time_t *_timer);

char *asctime (const struct tm *_tblock);
char *ctime (const time_t *_time);
struct tm *gmtime (const time_t *_timer);
struct tm *localtime (const time_t *_timer);

size_t strftime (char *restrict _s,
        size_t _maxsize, const char *restrict _fmt,
        const struct tm *restrict _t);







char *asctime_r (const struct tm *restrict,
     char *restrict);
char *ctime_r (const time_t *, char *);
struct tm *gmtime_r (const time_t *restrict,
     struct tm *restrict);
struct tm *localtime_r (const time_t *restrict,
     struct tm *restrict);


# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 3
void _tzset_r (struct _reent *);

typedef struct __tzrule_struct
{
  char ch;
  int m;
  int n;
  int d;
  int s;
  time_t change;
  long offset;
} __tzrule_type;

typedef struct __tzinfo_struct
{
  int __tznorth;
  int __tzyear;
  __tzrule_type __tzrule[2];
} __tzinfo_type;

__tzinfo_type *__gettzinfo (void);
# 178 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/signal.h" 1 3





# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/signal.h" 1 3
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/signal.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_sigset.h" 1 3
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/signal.h" 2 3




typedef __sigset_t sigset_t;
# 119 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/signal.h" 3
typedef void (*_sig_func_ptr)(int);

struct sigaction
{
 _sig_func_ptr sa_handler;
 sigset_t sa_mask;
 int sa_flags;
};
# 153 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/signal.h" 3
typedef struct sigaltstack {
  void *ss_sp;
  int ss_flags;
  size_t ss_size;
} stack_t;
# 7 "/opt/devkitpro/devkitARM/arm-none-eabi/include/signal.h" 2 3



typedef int sig_atomic_t;
# 22 "/opt/devkitpro/devkitARM/arm-none-eabi/include/signal.h" 3
struct _reent;

_sig_func_ptr _signal_r (struct _reent *, int, _sig_func_ptr);
int _raise_r (struct _reent *, int);


_sig_func_ptr signal (int, _sig_func_ptr);
int raise (int);
void psignal (int, const char *);



# 179 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3







int clock_settime (clockid_t clock_id, const struct timespec *tp);
int clock_gettime (clockid_t clock_id, struct timespec *tp);
int clock_getres (clockid_t clock_id, struct timespec *res);



int timer_create (clockid_t clock_id,
  struct sigevent *restrict evp,
 timer_t *restrict timerid);



int timer_delete (timer_t timerid);



int timer_settime (timer_t timerid, int flags,
 const struct itimerspec *restrict value,
 struct itimerspec *restrict ovalue);
int timer_gettime (timer_t timerid, struct itimerspec *value);
int timer_getoverrun (timer_t timerid);



int nanosleep (const struct timespec *rqtp, struct timespec *rmtp);
# 12 "game1.c" 2
# 1 "overlayTileSet.h" 1
# 21 "overlayTileSet.h"

# 21 "overlayTileSet.h"
extern const unsigned short overlayTileSetTiles[16384];


extern const unsigned short overlayTileSetPal[256];
# 13 "game1.c" 2
# 1 "overlay.h" 1







extern const unsigned short overlayMap[1024];
# 14 "game1.c" 2


int xEnemySpawn[15] = {4, 12, 46, 58, 15, 7, 30, 21, 33, 41, 30, 49, 49, 4, 57};
int yEnemySpawn[15] = {4, 11, 12, 4, 22, 34, 27, 33, 34, 22, 13, 22, 35, 25, 28};


int xRockSpawn[15] = {10, 38, 49, 26, 7, 47, 26, 9, 20, 9, 16, 41, 38, 55, 50};
int yRockSpawn[15] = {6, 8, 17, 17, 13, 30, 33, 37, 41, 48, 54, 39, 46, 42, 50};


int xFlagSpawn[20] = {18, 39, 15, 58, 44, 4, 30, 17, 41, 59, 22, 11, 42, 59, 33, 10, 47, 23, 54, 17};
int yFlagSpawn[20] = {4, 5, 10, 11, 12, 15, 17, 25, 26, 48, 30, 34, 35, 35, 40, 43, 44, 45, 51, 52};

int hOff;
int vOff;


int randomIndex;
int specialIndex;
int luckyIndex;


unsigned char colorAt(int x, int y){
    if (level == 1) {return ((unsigned char *)collision1Bitmap)[((y) * (512) + (x))];}
    else {return ((unsigned char *)collision2Bitmap)[((y) * (512) + (x))];}
}


void initializeGame1(){
    score = 0;
    flagsCollected = 0;

    srand(seed);
    randomIndex = rand();

    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);


    initializeEnemies();
    initializeRocks();
    initializeFlags();


    DMANow(3, level1MapMap, &((screenblock *)0x6000000)[28], (8192)/2);
    DMANow(3, overlayMap, &((screenblock *)0x6000000)[27], (2048)/2);


    fuel = 100;
    player.width = 16;
    player.height = 16;
    player.x = 248;
    player.y = 464;
    player.numFrames = 3;
    player.direction = rand() % 4;
    player.framesPassed = 20;
    player.xDel = 2;
    player.yDel = 2;
    player.aniFrame = 1;
    player.aniState = 1;
    lives = 3;
    playerSpawnX = player.x;
    playerSpawnY = player.y;
}

void initializeEnemies(){
    for (int i = 0; i < 3; i++) {
        int random = rand();
        enemyPool[i].aniState = 1;
        enemyPool[i].aniFrame = 0;
        enemyPool[i].direction = random % 4;
        enemyPool[i].framesPassed = 20;
        enemyPool[i].height = 16;
        enemyPool[i].hide = 0;
        enemyPool[i].numFrames = 3;
        enemyPool[i].width = 16;
        enemyPool[i].xDel = 2;
        enemyPool[i].yDel = 2;
        if (level == 1){
            enemyPool[i].x = xEnemySpawn[(randomIndex + (5*i)) % 15] * 8;
            enemyPool[i].y = yEnemySpawn[(randomIndex + (5*i)) % 15] * 8;
        } else {
            enemyPool[i].x = xEnemySpawn2[(randomIndex + (5*i)) % 15] * 8;
            enemyPool[i].y = yEnemySpawn2[(randomIndex + (5*i)) % 15] * 8;
        }
    }
}

void initializeRocks(){
    for (int i = 0; i < 3; i++) {
        int random = rand();
        rockPool[i].height = 24;
        rockPool[i].width = 24;
        if (level == 1){
            rockPool[i].x = xRockSpawn[(randomIndex + (5*i)) % 15] * 8;
            rockPool[i].y = yRockSpawn[(randomIndex + (5*i)) % 15] * 8;
        } else {
            rockPool[i].x = xRockSpawn2[(randomIndex + (5*i)) % 15] * 8;
            rockPool[i].y = yRockSpawn2[(randomIndex + (5*i)) % 15] * 8;
        }
    }
}

void initializeFlags(){
    specialIndex = rand() % 10;
    luckyIndex = rand() % 10;
    mgba_printf("special: %d, lucky: %d", specialIndex, luckyIndex);
    for (int i = 0; i < 10; i++) {
        int random = rand();
        flagPool[i].height = 8;
        flagPool[i].width = 16;
        flagPool[i].hide = 0;
        if (level == 1){
            flagPool[i].x = xFlagSpawn[(randomIndex + (2*i)) % 20] * 8;
            flagPool[i].y = yFlagSpawn[(randomIndex + (2*i)) % 20] * 8;
        } else {
            flagPool[i].x = xFlagSpawn2[(randomIndex + (2*i)) % 20] * 8;
            flagPool[i].y = yFlagSpawn2[(randomIndex + (2*i)) % 20] * 8;
        }


        if (i == specialIndex){

            if (luckyIndex == specialIndex){
                luckyIndex = (luckyIndex++) % 10;
            }
            flagPool[i].special = 1;
        } else if (i == luckyIndex){
            flagPool[i].lucky = 1;
        } else {
            flagPool[i].lucky = 0;
            flagPool[i].special = 0;
        }
    }
}

void updateGame(){
    for (int i = 0; i < 3; i++){
        updateEnemy(&enemyPool[i]);
    }
    updatePlayer();


    hOff = player.x - (240 - player.width)/2;
    vOff = player.y - (160 - player.height)/2;

    if (player.x < 0) player.x = 0;
    if (player.y < 0) player.y = 0;
    if (player.x > 512 - player.width) player.x = 512 - player.width;
    if (player.y > 512 - player.height) player.y = 512 - player.height;

    if (hOff < 0) hOff = 0;
    if (vOff < 0) vOff = 0;
    if (hOff > 512 - 240) hOff = 512 - 240;
    if (vOff > 512 - 160) vOff = 512 - 160;


    shadowOAM[0].attr0 = (0<<14) | ((player.y - vOff) & 0xFF) | (0<<8);
    shadowOAM[0].attr1 = (1<<14) | ((player.x - hOff) & 0x1FF);
    shadowOAM[0].attr2 = (((0) & 0xF) <<12) | (((player.aniFrame * 2)*32+(player.direction * 2)) & 0x3FF) | (((1) & 3) << 10);


    for (int i = 0; i < 3; i++){
        if (enemyPool[i].y + enemyPool[i].height > vOff && enemyPool[i].y < 160 + vOff){
            shadowOAM[i+1].attr0 = (0<<14) | ((enemyPool[i].y - vOff) & 0xFF) | (0<<8);
            shadowOAM[i+1].attr1 = (1<<14) | ((enemyPool[i].x - hOff) & 0x1FF);
            shadowOAM[i+1].attr2 = (((0) & 0xF) <<12) | (((enemyPool[i].aniFrame * 2)*32+(enemyPool[i].direction * 2 + 8)) & 0x3FF) | (((1) & 3) << 10);
        } else {
            shadowOAM[i+1].attr0 = (2<<8);
        }
    }


    if (smokeFrame == 0 || smokeFrame == 120){
        shadowOAM[4].attr0 = (2<<8);
        smokeFrame = 120;
    } else {
        smokeFrame--;
        shadowOAM[4].attr0 = (0<<14) | ((smoke.y - vOff) & 0xFF) | (0<<8);
        shadowOAM[4].attr1 = (2<<14) | ((smoke.x - hOff) & 0x1FF);
        shadowOAM[4].attr2 = (((0) & 0xF) <<12) | (((0)*32+(20)) & 0x3FF);
    }


    for (int i = 0; i < 3; i++){
        if(collision(player.x, player.y, player.width, player.height, rockPool[i].x, rockPool[i].y, rockPool[i].width, rockPool[i].height)){
                collisionOccurred();
            }
        if (rockPool[i].y + rockPool[i].height > vOff && rockPool[i].y < 160 + vOff){
            shadowOAM[i+5].attr0 = (0<<14) | ((rockPool[i].y - vOff) & 0xFF) | (0<<8);
            shadowOAM[i+5].attr1 = (2<<14) | ((rockPool[i].x - hOff) & 0x1FF);
            shadowOAM[i+5].attr2 = (((0) & 0xF) <<12) | (((0)*32+(16)) & 0x3FF) | (((1) & 3) << 10);
        } else {
            shadowOAM[i+5].attr0 = (2<<8);
        }
    }


    for (int i = 0; i < 10; i++){
        if (flagPool[i].y + flagPool[i].height > vOff && flagPool[i].y < 160 + vOff && !(flagPool[i].hide)){
            if(collision(player.x, player.y, player.width, player.height, flagPool[i].x, flagPool[i].y, flagPool[i].width, flagPool[i].height)){
                flagsCollected++;
                flagPool[i].hide = 1;


                if (flagPool[i].lucky){
                    score += (fuel * 10 * level);
                } else if (flagPool[specialIndex].hide){
                    score += 200;
                } else {
                    score += 100;
                }
            }
            shadowOAM[i+8].attr0 = (2<<14) | ((flagPool[i].y - vOff) & 0xFF) | (0<<8);
            shadowOAM[i+8].attr1 = (0<<14) | ((flagPool[i].x - hOff) & 0x1FF);
            shadowOAM[i+8].attr2 = (((0) & 0xF) <<12) | (((0)*32+(30 - flagPool[i].special - (2*flagPool[i].lucky))) & 0x3FF) | (((1) & 3) << 10);
        } else {
            shadowOAM[i+8].attr0 = (2<<8);
        }
    }
}

void updatePlayer(){

    updateFuel();
    updateScore();
    updateLives();


    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;


    if ((~(buttons) & ((1<<6)))) {
        player.direction = UP;
    }
    if ((~(buttons) & ((1<<7)))) {
        player.direction = DOWN;
    }
    if ((~(buttons) & ((1<<5)))) {
        player.direction = LEFT;

    }
    if ((~(buttons) & ((1<<4)))) {
        player.direction = RIGHT;
    }
    if((!(~(oldButtons) & ((1<<0))) && (~(buttons) & ((1<<0)))) && smokeFrame == 120){
        releaseSmoke(player.x, player.y, player.direction);
    }


    for (int i = 0; i < player.xDel; i++){
        switch (player.direction){
            case(DOWN):
                if (colorAt(leftX, bottomY + 1) && colorAt(rightX, bottomY + 1)) player.y+=1;
                break;
            case(UP):
                if (colorAt(leftX, topY - 1) && colorAt(rightX, topY - 1)) player.y-=1;
                break;
            case (RIGHT):
                if (colorAt(rightX + 1, bottomY) && colorAt(rightX + 1, topY)) player.x+=1;
                break;
            case (LEFT):
                if (colorAt(leftX - 1, bottomY) && colorAt(leftX - 1, topY)) player.x-=1;
                break;
        }
    }


    if (player.aniState) {
        player.framesPassed--;
        if (player.framesPassed == 0){
                player.framesPassed = 20;
                player.aniFrame = (player.aniFrame + 1) % player.numFrames;
        }
    } else {
        player.aniFrame = 0;
        player.framesPassed = 10;
    }
}

void updateEnemy(SPRITE *enemyPtr){
    if (collision(player.x, player.y, player.width, player.height, enemyPtr->x, enemyPtr->y, enemyPtr->width, enemyPtr->height)){

        collisionOccurred();
    }


    if (smokeFrame == 120 || smokeFrame == 0){
        enemyPtr->xDel = 2;
        enemyPtr->yDel = 2;
    } else if (collision(enemyPtr->x, enemyPtr->y, enemyPtr->width, enemyPtr->height, smoke.x, smoke.y, 24, 24)){
        enemyPtr->xDel = 0;
        enemyPtr->yDel = 0;
    }


    int leftX = enemyPtr->x;
    int rightX = enemyPtr->x + enemyPtr->width - 1;
    int topY = enemyPtr->y;
    int bottomY = enemyPtr->y + enemyPtr->height - 1;


    if (player.x < enemyPtr->x && colorAt(leftX - enemyPtr->xDel, bottomY) && colorAt(leftX - enemyPtr->xDel, topY)){
        enemyPtr->direction = LEFT;
        enemyPtr->x -= enemyPtr->xDel;
    }
    else if (player.x > enemyPtr->x && colorAt(rightX + enemyPtr->xDel, bottomY) && colorAt(rightX + enemyPtr->xDel, topY)){
        enemyPtr->direction = RIGHT;
        enemyPtr->x += enemyPtr->xDel;
    }
    else if (player.y < enemyPtr->y && colorAt(leftX, topY - enemyPtr->yDel) && colorAt(rightX, topY - enemyPtr->yDel)){
        enemyPtr->direction = UP;
        enemyPtr->y -= enemyPtr->yDel;
    }
    else if (player.y > enemyPtr->y && colorAt(leftX, bottomY + enemyPtr->yDel) && colorAt(rightX, bottomY + enemyPtr->yDel)){
        enemyPtr->direction = DOWN;
        enemyPtr->y += enemyPtr->yDel;
    }


    enemyPtr->framesPassed--;
    if (enemyPtr->framesPassed == 0){
            enemyPtr->framesPassed = 20;
            enemyPtr->aniFrame = (enemyPtr->aniFrame + 1) % enemyPtr->numFrames;
    }
}

void updateFuel(){

    moved++;
    if (moved == 60){
        fuel--;
        moved = 0;
    }


    if (fuel > 90){
    } else if (fuel > 80 ){

        ((screenblock *)0x6000000)[27].tilemap[((3) * (32) + (21))] = ((3) * (32) + (0));
    } else if (fuel > 70) {

        ((screenblock *)0x6000000)[27].tilemap[((3) * (32) + (22))] = ((3) * (32) + (1));
    } else if (fuel > 60){

        ((screenblock *)0x6000000)[27].tilemap[((3) * (32) + (22))] = ((4) * (32) + (1));
        ((screenblock *)0x6000000)[27].tilemap[((3) * (32) + (23))] = ((3) * (32) + (2));
    } else if (fuel > 50){

        ((screenblock *)0x6000000)[27].tilemap[((3) * (32) + (23))] = ((4) * (32) + (2));
        ((screenblock *)0x6000000)[27].tilemap[((3) * (32) + (24))] = ((3) * (32) + (3));
    } else if (fuel > 40){

        ((screenblock *)0x6000000)[27].tilemap[((3) * (32) + (24))] = ((4) * (32) + (3));
    } else if (fuel > 30){

        ((screenblock *)0x6000000)[27].tilemap[((3) * (32) + (25))] = ((3) * (32) + (4));
    } else if (fuel > 20){

        ((screenblock *)0x6000000)[27].tilemap[((3) * (32) + (25))] = ((4) * (32) + (4));
        ((screenblock *)0x6000000)[27].tilemap[((3) * (32) + (26))] = ((3) * (32) + (5));
    } else if (fuel > 10){

        ((screenblock *)0x6000000)[27].tilemap[((3) * (32) + (26))] = ((4) * (32) + (5));
        ((screenblock *)0x6000000)[27].tilemap[((3) * (32) + (27))] = ((3) * (32) + (6));
    } else if (fuel > 0){

        ((screenblock *)0x6000000)[27].tilemap[((3) * (32) + (27))] = ((4) * (32) + (6));
    }
}

void updateScore(){

    int tens = (score % 100)/10;
    int hundreds = (score % 1000)/100;
    int thousands = (score % 10000)/1000;
    ((screenblock *)0x6000000)[27].tilemap[((1) * (32) + (25))] = thousands + 15;
    ((screenblock *)0x6000000)[27].tilemap[((1) * (32) + (26))] = hundreds + 15;
    ((screenblock *)0x6000000)[27].tilemap[((1) * (32) + (27))] = tens + 15;
}

void updateLives(){

    ((screenblock *)0x6000000)[27].tilemap[((18) * (32) + (7))] = lives + 15;
}


void releaseSmoke(int x, int y, int direction){
    fuel -= 10;
    smokeFrame--;


    switch (direction){
        case(UP):
            smoke.x = x;
            smoke.y = y+16;
            break;
        case(DOWN):
            smoke.x = x;
            smoke.y = y-24;
            break;
        case (LEFT):
            smoke.x = x+16;
            smoke.y = y;
            break;
        case (RIGHT):
            smoke.x = x-24;
            smoke.y = y;
            break;
    }
}


void collisionOccurred(){
    lives--;
    player.x = playerSpawnX;
    player.y = playerSpawnY;
}


void drawGame(){
    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000016) = vOff;

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
}
