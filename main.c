#include "myLib.h"
#include <stdio.h>
#include <stdlib.h>
#include "text.h"

int score1 = 0;
int score2 = 0;
int lost = 0;
int won = 0;
int ballSize = 3;
unsigned short ballColor = WHITE;
int ballCol = 100;
int ballRow = 75;
int ballColPrev = 50;
int ballRowPrev = 50;
int hRate = 1;
int vRate = 1;
unsigned short padColor = GREEN;
int padHeight = 25;
int padWidth = 3;
int padCol = 20;
int padRow = 75;
int padColPrev = 20;
int padRowPrev = 75;
int pad_2Col = 220;
int pad_2Row = 75;
int pad_2ColPrev = 220;
int pad_2RowPrev = 75;

int main()
{
	REG_DISPCTL = MODE3 | BG2_ENABLE;

	while(1)
	{
		update();
		drawScore1();
		waitForVblank();
		drawScore2();
		draw();
	}

	return 0;
}

void update()
{
	if(score1 == 99 || score2 == 99) {
		won = 1;
		vRate = 0;
		hRate = 0;
		ballColor = GREEN;
		padColor = GREEN;
		winScreen();
	}

	//collision detection
	if(hRate > 0) { //if moving right
		if((ballRow >= pad_2Row) && (ballRow <= (pad_2Row + padHeight))) { //if vert alligned
			if(((ballCol + ballSize) >= pad_2Col) && ((ballCol + ballSize) <= (pad_2Col + padWidth))) { //if right side hits paddle's left
				hRate = -hRate;
				score2++;
				drawScore2();
			}
		}
		else {
			if(((ballCol + ballSize) >= pad_2Col) && ((ballCol + ballSize) <= (pad_2Col + padWidth))) { //if right side hits paddle's left
				lost = 1;
				vRate = 0;
				hRate = 0;
				ballColor = RED;
				padColor = RED;
				loseScreen(); //reset using backspace
			}
		}
	}

	if(hRate < 0) { //if moving left
		if((ballRow >= padRow) && (ballRow <= (padRow + padHeight))) { //if vert alligned
			if(ballCol <= (padCol + padWidth) && (ballCol >= padCol)) { //if left side hits paddle's right
				hRate = -hRate;
				score1++;
				drawScore1();
			}
		}
		else {
			if(ballCol <= (padCol + padWidth) && (ballCol >= padCol)) {
				lost = 1;
				vRate = 0;
				hRate = 0;
				ballColor = RED;
				padColor = RED;
				loseScreen(); //reset using backspace
			}
		}
	}
	if (lost == 0 && won == 0) {
		if (BUTTON_DOWN_NOW(BUTTON_A)) {
			if(padRow >= 0) {
				padRowPrev = padRow;
				padRow--;
			}
		}
		if (BUTTON_DOWN_NOW(BUTTON_B)) {
			if((padRow + padHeight) <= 160) {
				padRowPrev = padRow;
				padRow++;
			}
		}
		if (BUTTON_DOWN_NOW(BUTTON_UP)) {
			if(pad_2Row >= 0) {
				pad_2RowPrev = pad_2Row;
				pad_2Row--;
			}
		}
		if (BUTTON_DOWN_NOW(BUTTON_DOWN)) {
			if((pad_2Row + padHeight) <= 160) {
				pad_2RowPrev = pad_2Row;
				pad_2Row++;
			}
		}
	}
	if (ballRow > (160 - ballSize)) {
		ballRowPrev = ballRow;
		ballRow = 160 - ballSize;
		vRate = -vRate;
	}
	if (ballCol > (240 - ballSize)) {
		ballColPrev = ballCol;
		ballCol = 240 - ballSize;
		hRate = -hRate;
	}
	if (ballRow < 0) {
		ballRow = 0;
		vRate = -vRate;
	}
	if (ballCol < 0) {
		ballCol = 0;
		hRate = -hRate;
	}

	ballColPrev = ballCol;
	ballRowPrev = ballRow;
	ballCol += hRate;
	ballRow += vRate;

	//reset using backspace
	reset();
}

void draw()
{
	drawRect3(ballRowPrev, ballColPrev, ballSize, ballSize, BLACK);
	drawRect3(ballRow, ballCol, ballSize, ballSize, ballColor);
	drawRect3(padRowPrev, padColPrev, padHeight, padWidth, BLACK);
	drawRect3(padRow, padCol, padHeight, padWidth, padColor);
	drawRect3(pad_2RowPrev, pad_2ColPrev, padHeight, padWidth, BLACK);
	drawRect3(pad_2Row, pad_2Col, padHeight, padWidth, padColor);
}

void drawScore1()
{
    char buffer1[128];
    sprintf(buffer1, "P1: %i", score1);
    drawString(5,2,buffer1,ballColor);
}

void drawScore2()
{
	char buffer2[128];
    sprintf(buffer2, "P2: %i", score2);
    drawString(5,200,buffer2,ballColor);
}

void winScreen() {
	drawString(65,90,"YOU WIN",ballColor);
}

void loseScreen() {
    drawString(65,90,"YOU LOSE",ballColor);
}

void reset() {
		if (BUTTON_DOWN_NOW(BUTTON_SELECT)) {
		drawRect3(ballRowPrev, ballColPrev, ballSize, ballSize, BLACK);
		drawRect3(ballRow, ballCol, ballSize, ballSize, BLACK);
		drawRect3(padRowPrev, padColPrev, padHeight, padWidth, BLACK);
		drawRect3(padRow, padCol, padHeight, padWidth, BLACK);
		drawRect3(pad_2RowPrev, pad_2ColPrev, padHeight, padWidth, BLACK);
		drawRect3(pad_2Row, pad_2Col, padHeight, padWidth, BLACK);
		drawRect3(60, 90, 15, 50, BLACK); //reset win/lose text
		drawRect3(4, 230, 8, 8, BLACK); //reset double digit scores
		drawRect3(4, 32, 8, 8, BLACK);

		lost = 0;
		won = 0;
		score1 = 0;
		score2 = 0;
		ballColor = WHITE;
		ballCol = 50;
		ballRow = 50;
		ballColPrev = 50;
		ballRowPrev = 50;
		hRate = 1;
		vRate = 1;

		padColor = GREEN;
		padHeight = 25;
		padWidth = 3;
		padCol = 20;
		padRow = 75;
		padColPrev = 20;
		padRowPrev = 75;
		pad_2Col = 220;
		pad_2Row = 75;
		pad_2ColPrev = 220;
		pad_2RowPrev = 75;
	}
}
