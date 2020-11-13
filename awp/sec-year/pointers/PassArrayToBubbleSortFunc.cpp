#include <iostream>
#include <time.h>
using namespace std;


const int MAX_ELEMENTE = 5; // Festlegung der Arraygr��e

// Einfache Hilfsfunktion zum Ziehen einer Zahl zwischen 1 und 100
int getZufallszahlVon1Bis100();

void InitArray(int zahlen[], int len);
void ZeigeArray(int zahlen[], int len);
void BubbleSort(int zahlen[], int len);


int main()
{
	// Zufallszahlen-Generator initialisieren
	srand((unsigned)time(NULL));

	// Definition eines Integer-Arrays
	int aiZahlen[MAX_ELEMENTE]; 

	// Initial. mit Zufallszahlen
	InitArray(aiZahlen, MAX_ELEMENTE); 

	cout << "Array-Inhalt vor dem Sortieren:" << endl;
	cout << "-------------------------------" << endl;

	// Ausgabe des unsortierten Arrays
	ZeigeArray(aiZahlen, MAX_ELEMENTE);

	// Sortierung mit Bubblesort
	BubbleSort(aiZahlen, MAX_ELEMENTE);
	cout << endl << endl;
	cout << "Array-Inhalt nach dem Sortieren:" << endl;
	cout << "--------------------------------" << endl;

	// Ausgabe des sortierten Arrays
	ZeigeArray(aiZahlen, MAX_ELEMENTE);
	getchar();
	return 0;
}
int getZufallszahlVon1Bis100()
{
	return rand() % 100 + 1;
}


void InitArray(int aiZahlen[], int len) {
	for (int i = 0; i < len; i++) {
		aiZahlen[i] = getZufallszahlVon1Bis100();
	}
}

void ZeigeArray(int aiZahlen[], int len) {
	for (int i = 0; i < len; i++) {
		cout << aiZahlen[i] << " ";
	}
}

void BubbleSort(int aiZahlen[], int len) {
	int iTemp = 0;

	for (int i = 0; i < len - 1; i++) {
		for (int k = 0; k < (len - 1 - i); k++) {
			if (aiZahlen[k] > aiZahlen[k + 1]) {
				iTemp = aiZahlen[k];
				aiZahlen[k] = aiZahlen[k + 1];
				aiZahlen[k + 1] = iTemp;
			}
		}
	}
}