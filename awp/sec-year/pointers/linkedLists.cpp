#include <iostream>

using namespace std;

struct Knoten {
	int zahl;
	Knoten* naechster = NULL;
};

void addKnoten(Knoten* anker, int zahl);
double mittelwert(Knoten* anker);

int main() {
	Knoten* anker = new Knoten;
	
	addKnoten(anker, 10);

	cout << anker->naechster << endl;
	cout << anker->naechster->zahl << endl;

	addKnoten(anker, 20);
	cout << anker->naechster->naechster->zahl << endl;

	addKnoten(anker, 30);
	cout << anker->naechster->naechster->naechster->zahl;
}

void addKnoten(Knoten* anker, int zahl) {
	Knoten* hilf = anker;
	Knoten* neuerKnoten = new Knoten;
	neuerKnoten->zahl = zahl;
	if (anker->naechster == NULL) {
		anker->naechster = neuerKnoten;
	}
	else {
		while (hilf->naechster != NULL) {
			hilf = hilf->naechster;
		}
		hilf->naechster = neuerKnoten;
	}
}

double mittelwert(Knoten* anker) {
	return 0;
}
