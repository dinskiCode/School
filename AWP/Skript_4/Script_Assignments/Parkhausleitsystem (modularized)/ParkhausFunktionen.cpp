#include <iostream>
#include "ParkhausFunktionen.h"
#include <windows.h>
#include <time.h>

using namespace std;

// Farben
const WORD GRUEN = 0x0002;
const WORD ROT = 0x0004;
const WORD NORMAL = 0x0007;

void zeichne_parkhaus(void) {
	schalte_pfeile();
	for (int i = 0; i < 49; i++) {
		cout << "-";
	}
	cout << "\n";
	cout << "Parkbox:-";
	for (int i = 0; i < 5; i++) {
		cout << i << "--";
	}
	for (int i = 0; i < 9; i++) {
		cout << "-";
	}
	for (int i = 5; i < 10; i++) {
		if (i == 9) {
			cout << i << "---";
		}
		else {
			cout << i << "--";
		}
	}
	cout << "\n";
	for (int i = 2; i >= 0; i--) {
		cout << "Etage " << i << ": ";
		for (int k = 0; k < 5; k++) {
			if (k == 4) {
				setze_farbe(i, k);
				cout << ab_parkhaus[i][k];
			}
			else {
				setze_farbe(i, k);
				cout << ab_parkhaus[i][k] << "  ";
			}
		}
		farbe(NORMAL);
		for (int l = 0; l < 11; l++) {
			farbe(GRUEN);
			cout << pfeil_anzeige[i][l];
			farbe(NORMAL);
		}
		for (int k = 5; k < 10; k++) {
			setze_farbe(i, k);
			cout << ab_parkhaus[i][k] << "  ";
		}
		farbe(NORMAL);
		cout << "\n";
	}
}

void schalte_pfeile(void) {
	// Pfeile sollen auf Parkplatz zeigen, der am weitesten von der Einfahrt entfernt liegt

	// Pfeile neu laden (pfeilarray leeren/ mit ' ' befuellen)
	for (int i = 0; i < 3; i++) {
		for (int k = 0; k < 11; k++) {
			pfeil_anzeige[i][k] = ' ';
		}
	}

	// Etage 2, Platz 0-4
	for (int i = 0; i < 5; i++) {
		if (ab_parkhaus[2][i] == 0) {
			pfeil_anzeige[2][1] = '<', pfeil_anzeige[2][2] = pfeil_anzeige[2][3] = '-', pfeil_anzeige[1][5] = pfeil_anzeige[0][5] = '^';
			return;
		}
	}
	// Etage 2, Platz 5-9
	for (int i = 5; i < 10; i++) {
		if (ab_parkhaus[2][i] == 0) {
			pfeil_anzeige[2][9] = '>', pfeil_anzeige[2][7] = pfeil_anzeige[2][8] = '-', pfeil_anzeige[1][5] = pfeil_anzeige[0][5] = '^';
			return;
		}
	}

	// Etage 1, Platz 0-4
	for (int i = 0; i < 5; i++) {
		if (ab_parkhaus[1][i] == 0) {
			pfeil_anzeige[1][1] = '<', pfeil_anzeige[1][2] = pfeil_anzeige[1][3] = '-', pfeil_anzeige[0][5] = '^';
			return;
		}
	}
	// Etage 1, Platz 5-9
	for (int i = 5; i < 10; i++) {
		if (ab_parkhaus[1][i] == 0) {
			pfeil_anzeige[1][9] = '>', pfeil_anzeige[1][8] = pfeil_anzeige[1][7] = '-', pfeil_anzeige[0][5] = '^';
			return;
		}
	}

	// Etage 0, Platz 0-4
	for (int i = 0; i < 5; i++) {
		if (ab_parkhaus[0][i] == 0) {
			pfeil_anzeige[0][1] = '<', pfeil_anzeige[0][2] = pfeil_anzeige[0][3] = '-';
			return;
		}
	}
	// Etage 1, Platz 5-9
	for (int i = 5; i < 10; i++) {
		if (ab_parkhaus[0][i] == 0) {
			pfeil_anzeige[0][9] = '>', pfeil_anzeige[0][8] = pfeil_anzeige[0][7] = '-';
			return;
		}
	}
}

void farbe(WORD color) {
	HANDLE h = GetStdHandle(STD_OUTPUT_HANDLE);
	SetConsoleTextAttribute(h, color);
}

void setze_farbe(int i, int k) {
	if (ab_parkhaus[i][k] == 0) {
		farbe(GRUEN);
	}
	else {
		farbe(ROT);
	}
}

int suche_freie_etage(void) {
	for (int i = 0; i < 3; i++) {
		return suche_freien_parkplatz(i);
	}
	return -1;
}

int suche_freien_parkplatz(int i_etage) {
	for (int k = 0; k < 10; k++) {
		if (ab_parkhaus[i_etage][k] == 0) {
			return k;
		}
	}
	return -1;
}

void einausfahrt(bool b) {
	char c_ein_oder_aus = ' ';
	int i_etagen_nr = 0;
	int i_platz_nr = 0;

	cout << "\nEinfahrt oder Ausfahrt? <e/a>? ";
	cin >> c_ein_oder_aus;

	// Pruefe, ob Einfahrt bei voll besetztem Parkhaus
	if (!b && c_ein_oder_aus == 'e') {
		cout << "Das Parkhaus ist derzeit leider voll besetzt.";
		einausfahrt(b);
	}

	// Ausfahrt 
	if (c_ein_oder_aus == 'a') {
		cout << "Welchen Parkplatz moechten Sie verlassen?\nEtage<0-2>? ";
		cin >> i_etagen_nr;
		if (!etagen_eingabe_pruefen(i_etagen_nr)) {
			cout << "Ungueltige Etage.";
			einausfahrt(b);
		}
		cout << "Box <0-9>?";
		cin >> i_platz_nr;
		if (!box_eingabe_pruefen(i_platz_nr)) {
			cout << "Ungueltige Platz-Nr.";
			einausfahrt(b);
		}
		// BUG: Wenn diese Fehlermeldung erscheint, man anschließend 'e' - also einfahren - waehlt, erfolgt die Abfrage nach Etage und Platz doppelt...
		if (ab_parkhaus[i_etagen_nr][i_platz_nr] != 1) {
			cout << "Ungueltige Platz-Nr. (Platz unbesetzt)";
			einausfahrt(b);
		}
		freies_parken(i_etagen_nr, i_platz_nr, 10);
		ab_parkhaus[i_etagen_nr][i_platz_nr] = 0;
	}

	// Einfahrt 
	if (c_ein_oder_aus == 'e') {
		cout << "In welche Etage fahren Sie <0-2>? ";
		cin >> i_etagen_nr;
		if (!etagen_eingabe_pruefen(i_etagen_nr)) {
			cout << "Ungueltige Etage.";
			einausfahrt(b);
		}
		cout << "In welche Box fahren Sie <0-9>? ";
		cin >> i_platz_nr;
		if (!box_eingabe_pruefen(i_platz_nr)) {
			cout << "Ungueltige Platz-Nr.";
			einausfahrt(b);
		}
		if (ab_parkhaus[i_etagen_nr][i_platz_nr] == 0) {
			ab_parkhaus[i_etagen_nr][i_platz_nr] = 1;
			time_t zeit_einfahrt = time(NULL);
			parkzeit[i_etagen_nr][i_platz_nr] = zeit_einfahrt;
		}
		else {
			cout << "Der gewünschte Parkplatz ist bereits besetzt.";
		}
	}
}

bool etagen_eingabe_pruefen(int i_etage) {
	if (i_etage >= 0 && i_etage <= 2) {
		return true;
	}
	return false;
}

bool box_eingabe_pruefen(int i_parkplatz_nr) {
	if (i_parkplatz_nr >= 0 && i_parkplatz_nr <= 9) {
		return true;
	}
	return false;
}

void freies_parken(int i_etage, int i_platz_nr, int i_freie_zeit) {
	time_t ausfahrt_zeit = time(NULL);
	int einfahrt_zeit = parkzeit[i_etage][i_platz_nr];
	int differenz_sekunden = ausfahrt_zeit - einfahrt_zeit;
	int minuten = differenz_sekunden / 60;
	int rest = differenz_sekunden - minuten * 60;
	if (rest > 0) {
		minuten++;
	}
	if (minuten > i_freie_zeit) {
		farbe(ROT);
		cout << "\nZu zahlende Minute(n): " << minuten << "\n\n";
		farbe(NORMAL);
	}
	else {
		farbe(GRUEN);
		cout << "\nKostenlose Ausfahrt.\n\n";
		farbe(NORMAL);
	}
}

