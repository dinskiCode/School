#include <iostream>

using namespace std;

void basisaufgabe();
int* eingabeArray(int anzahl);
void ausgabeArray(int *arr, int anzahl);
double mittelwert(int *pArr, int anzahl);

void erweiterung();
int* erweiterteEingabe();

int main() {
	cout << "Mittelwertberechnung" << "\n--------------------\n\n";
	basisaufgabe();

	getchar();
	return 1;
}


// teil basisaufgabe
void basisaufgabe() {
	int anzahl;
	cout << "Werteanzahl: ";
	cin >> anzahl;

	int* werteArray = eingabeArray(anzahl);
	ausgabeArray(werteArray, anzahl);
	cout << "\nMittelwert: " << mittelwert(werteArray, anzahl);

	delete[] werteArray;
	werteArray = NULL;
}

int* eingabeArray(int anzahl) {
	int nutzerEingabe;
	int* pArr = new int[anzahl];
	for (int i = 0; i < anzahl; i++) {
		cout << i + 1 << ". Wert: ";
		cin >> nutzerEingabe;
		pArr[i] = nutzerEingabe;
		cout << endl;
	}
	return pArr;
}

void ausgabeArray(int* arr, int anzahl) {
	cout << "Die Werte: ";
	for (int i = 0; i < anzahl; i++) {
		cout << arr[i] << " ";
	}
}

double mittelwert(int *pArr, int anzahl) {
	double gesamt = 0;
	for (int i = 0; i < anzahl; i++) {
		gesamt += pArr[i];
	}
	return gesamt / anzahl;
}


// teil erweiterung
void erweiterung() {

}

int* erweiterteEingabe() {
	int* werte;
	int derzeitigeAnzahl = 0;
	char weitereZahl = 'j';
	int wertEingabe;
	
	do {
		cout << derzeitigeAnzahl + 1 << ". Wert: ";
		cin >> wertEingabe;
		int* temp = kopiereArray(werte, derzeitigeAnzahl);
		werte = new int[derzeitigeAnzahl];
		for (int i = 0; i < derzeitigeAnzahl; i++) {
			werte[i] = temp[i];
		}
		werte[derzeitigeAnzahl - 1] = wertEingabe;
		cout << "\nWeiter Zahl?: ";
		cin >> weitereZahl;
	} while (weitereZahl == 'j');
	ausgabeArray(werte, derzeitigeAnzahl);
}

int* kopiereArray(int* zuKopieren, int len) {
	int* kopierer;
	kopierer = new int[len];
	for (int i = 0; i < len; i++) {
		kopierer[i] = zuKopieren[i];
	}
	return kopierer;
}
