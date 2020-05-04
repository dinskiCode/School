#include <iostream>
#include <windows.h>
#include <stdlib.h>
using namespace std;

const WORD BLAU = 0x0001;
const WORD GRUEN = 0x0002;
const WORD ROT = 0x0004;
const WORD NORMAL = 0x0007;
const WORD HELLBLAU = 0x0009;
const WORD GELB = 0x000e;
const WORD BG_BLAU_ROT = 0x00014;
const WORD BG_BLAU_NORMAL = 0x00017;
const WORD BG_GELB_SCHWARZ = 0x000e0;
const WORD BG_SCHWARZ_GELB = 0x0000e;


void farbe(WORD color);

int main() {


	bool lauflicht[5][50] = {
		{ 1,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,1,0 },
		{ 1,0,0,1,0,0,1,0,1,0,0,1,0,0,0,1,0,0,1,0,0,1 },
		{ 1,1,1,1,0,1,1,1,1,1,0,1,0,0,0,1,0,0,1,0,0,1 },
		{ 1,0,0,1,0,1,0,0,0,1,0,1,0,0,0,1,0,0,1,0,0,1 },
		{ 1,0,0,1,0,1,0,0,0,1,0,1,1,1,0,1,1,1,0,1,1,0 }
	};

	for (int i = 0; i < 5; i++) {
		lauflicht[i][49] = lauflicht[i][0];
	}

	while (true) {

		for (int i = 0; i < 5; i++) {
			for (int k = 0; k < 50; k++) {
				if (k == 49) {
					lauflicht[i][k] = lauflicht[i][0];
				}
				else {
					lauflicht[i][k] = lauflicht[i][k + 1];
				}
			}
		}

		system("cls");
		for (int i = 0; i < 5; i++) {
			for (int k = 0; k < 50; k++) {
				if (lauflicht[i][k] == 1) {
					farbe(BG_GELB_SCHWARZ);
					cout << lauflicht[i][k];
				}
				else {
					farbe(NORMAL);
					cout << lauflicht[i][k];
				}

			}
			cout << "\n";
		}
	}
}

void farbe(WORD color)
{
	HANDLE h = GetStdHandle(STD_OUTPUT_HANDLE);
	SetConsoleTextAttribute(h, color);
}
