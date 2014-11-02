#include "myLib.h"

unsigned short *videoBuffer = VIDBUFADR;

void setPixel(int row, int col, unsigned short color)
{
	videoBuffer[OFFSET(row, col, 240)]  = color;
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
	while(SCANLINECOUNTER > 160);
	while(SCANLINECOUNTER < 160);
}