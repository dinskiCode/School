#include <iostream>
#include <windows.h>
#include <stdlib.h>
#include <time.h>
#include "ParkhausFunktionen.h"

using namespace std;

// globale Variablen -- bis zum jetzigen Kenntnisstand (im Bezug auf behandelten Schulstoff) i.O., ab naechstem Jahr dann aber nicht mehr.
bool ab_parkhaus[3][10] = { {0}, {0}, {0} };
int parkzeit[3][10] = { {}, {}, {} };
char pfeil_anzeige[3][11] = { {}, {}, {} };



int main() {
	bool parkhaus_geoeffnet = true;
	while (parkhaus_geoeffnet) {
		zeichne_parkhaus();
		einausfahrt(suche_freie_etage() != -1);
	}
}