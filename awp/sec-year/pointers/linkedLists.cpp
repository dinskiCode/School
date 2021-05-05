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
	int zahlEingabe;
	char nochEineZahl = 'j';
	
	while (nochEineZahl == 'j') {
		cout << "Zahl eingeben: ";
		cin >> zahlEingabe;
		
		addKnoten(anker, zahlEingabe);

		cout << "Noch eine Zahl (j/n)?: ";
		cin >> nochEineZahl;
	}

	cout << "Mittelwert: " << mittelwert(anker);

	delete anker;
	anker = NULL;
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
	int anzahl = 0, gesamt = 0;
	Knoten* lauf = anker;
	if (anker->naechster == NULL) {
		return 0;
	}
	else {
		while (lauf->naechster != NULL) {
			lauf = lauf->naechster;
			anzahl++;
			gesamt += lauf->zahl;
		}
		return gesamt / double(anzahl);
	}
}
