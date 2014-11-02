# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
# 1 "myLib.h" 1
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 25 "myLib.h"
extern unsigned short *videoBuffer;
# 41 "myLib.h"
void update();
void draw();
void setPixel3(int, int, unsigned short);
void drawRect3(int row, int col, int height, int width, volatile unsigned short color);
void waitForVblank();
void drawChar(int row, int col, char ch, unsigned short color);
# 2 "myLib.c" 2

unsigned short *videoBuffer = ((unsigned short *)0x6000000);

void setPixel(int row, int col, unsigned short color)
{
 videoBuffer[((row)*(240)+(col))] = color;
}

void drawRect3(int row, int col, int height, int width, volatile unsigned short color)
{
 int iMax = row + height;
 int jMax = col + width;
 for(int i = row; i < iMax; i++)
 {
  for(int j = col; j < jMax; j++)
  {
   setPixel(i, j, color);
  }
 }
}

void waitForVblank()
{
 while((*(volatile unsigned short *)0x4000006) > 160);
 while((*(volatile unsigned short *)0x4000006) < 160);
}
