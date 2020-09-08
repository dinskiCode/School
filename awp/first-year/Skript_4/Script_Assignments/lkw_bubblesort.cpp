#include <iostream>
#include <windows.h>
#include <stdlib.h>

#define GRUEN           0x0002
#define ROT             0x0004
#define NORMAL          0x0007
#define HELLBLAU        0x0009

using namespace std;
int Lkw_P[50] = { 0,1,0,1,0,2 }; //Belegung des 2ten und 4ten Parkplatzes, Reservierung des 6ten Parkplatzes und "frei"-Status aller anderen Parkplätze
int aiStunden[50] = { 3498,7212,1598,2042,8326,4828,1004,1697,228,1028,2696,1526,687,3085,4660,4084,2865,8423,6485,9552,1591,9734,9379,9526,3263,4433,5648,6603,8052,2858,7470,7502,390,8496,1622,257,2286,1007,8000,5752,4891,8143,7408,8562,4728,4631,1207,371,9669,9771 };
int platznummern[50] = {};

void Statusuebersicht(); //Funktion zur Ausgabe aller Parkplätze, Belegungsstatus und Belegungsstunden
void Farbe(WORD color);  //Funktion zum Setzen der Ausgabefarben des Textes
void Parkplatzbelegung();//Funktion zur Abfrage und Belegung eines Parkplatzes
void Sortierung();

int main()
{	
	for (int i = 0; i < 50; i++) {
		platznummern[i] = i + 1;
	}
	Farbe(NORMAL);

	//HIER SOLL DER AUFRUF DER SORTIERFUNKTION ERFOLGEN
	cout << endl << "MELDUNG" << endl; //Ausgabe beim ersten Durchlauf (nur für korrekte Formatierung nötig)

	while (1) {
		Sortierung();	// sortiert aistunden und passt die platznummern entsprechend an
		Statusuebersicht();  //Ausgabe der Parkplätze (mit Belegung) in zwei Spalten
		Parkplatzbelegung(); //"Frage nach" und "setzen von" "Belegungsstunden und Belegtstatus"
	}
	return 0;
}


//Funktion zum Setzen der Ausgabefarben des Textes
void Farbe(WORD color)
{
	SetConsoleTextAttribute(::GetStdHandle(STD_OUTPUT_HANDLE), color);
}



//Funktion zur Ausgabe aller Parkplätze, Belegungsstatus und Belegungsstunden  (in 3 Spalten)
void Statusuebersicht() {
	for (int i = 0; i < 50; i++) {
		if ((i + 1) % 2 != 0) {	// linke spalte, ungerade platznummern
			cout << "P-Nr: " << platznummern[i] << " = ";
			if (Lkw_P[platznummern[i]-1] == 0) {	// parkplatz ist frei
				Farbe(GRUEN);
				cout << "frei  (" << aiStunden[i] << ")";
				Farbe(NORMAL);
			}
			else if (Lkw_P[platznummern[i]-1] == 1) {
				Farbe(ROT);
				cout << "belegt  (" << aiStunden[i] << ")";
				Farbe(NORMAL);
			}
			else {
				Farbe(HELLBLAU);
				cout << "reserviert  (" << aiStunden[i] << ")";
				Farbe(NORMAL);
			}
		}
		else {	// rechte spalte, gerade platznummern
			cout << "\t\tP-Nr: " << platznummern[i] << " = ";
			if (Lkw_P[platznummern[i]-1] == 0) {	// parkplatz ist frei
				Farbe(GRUEN);
				cout << "frei  (" << aiStunden[i] << ")" << endl;
				Farbe(NORMAL);
			}
			else if (Lkw_P[platznummern[i]-1] == 1) {
				Farbe(ROT);
				cout << "belegt  (" << aiStunden[i] << ")" << endl;
				Farbe(NORMAL);
			}
			else {
				Farbe(HELLBLAU);
				cout << "reserviert  (" << aiStunden[i] << ")" << endl;
				Farbe(NORMAL);
			}
		}
	}
}



void Parkplatzbelegung() //Funktion zur Abfrage und Belegung eines Parkplatzes
{
	cout << endl;
	unsigned int i_anzahl_stunden = 0;
	unsigned int i_parkplatz_nummer = 0;
	cout << "Wieviel Stunden moechten Sie parken?:  > ";
	cin >> i_anzahl_stunden;
	
	aiStunden[0] += i_anzahl_stunden;
}

void Sortierung() {
	int stunden_behaelter = 0;
	int parkplatz_behaelter = 0;
	for (int i = 0; i < 50; i++) {
		for (int k = 1; k < 50; k++) {
			if (aiStunden[k - 1] > aiStunden[k]) {
				stunden_behaelter = aiStunden[k - 1];
				aiStunden[k - 1] = aiStunden[k];
				aiStunden[k] = stunden_behaelter;

				parkplatz_behaelter = platznummern[k - 1];
				platznummern[k - 1] = platznummern[k];
				platznummern[k] = parkplatz_behaelter;
			}
		}
	}
}