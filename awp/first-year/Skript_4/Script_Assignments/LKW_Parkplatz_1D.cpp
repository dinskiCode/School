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

void Statusuebersicht(); //Funktion zur Ausgabe aller Parkplätze, Belegungsstatus und Belegungsstunden
void Farbe(WORD color);  //Funktion zum Setzen der Ausgabefarben des Textes
void Parkplatzbelegung();//Funktion zur Abfrage und Belegung eines Parkplatzes

int main()
{
	//for (int i = 0; i < 50; i++) {
		//cout << Lkw_P[i] << ", ";
	//}
	Farbe(NORMAL);

	//HIER SOLL DER AUFRUF DER SORTIERFUNKTION ERFOLGEN
	cout << endl << "MELDUNG" << endl; //Ausgabe beim ersten Durchlauf (nur für korrekte Formatierung nötig)

	while (1) {
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
		if ((i+1) % 2 != 0) {	// linke spalte, ungerade platznummern
			cout << "P-Nr: " << (i + 1) << " = ";
			if (Lkw_P[i] == 0) {	// parkplatz ist frei
				Farbe(GRUEN);
				cout << "frei  (" << aiStunden[i] << ")";
				Farbe(NORMAL);
			}
			else if (Lkw_P[i] == 1) {
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
			cout << "\t\tP-Nr: " << (i + 1) << " = ";
			if (Lkw_P[i] == 0) {	// parkplatz ist frei
				Farbe(GRUEN);
				cout << "frei  (" << aiStunden[i] << ")" << endl;
				Farbe(NORMAL);
			}
			else if (Lkw_P[i] == 1) {
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

	cout << "Welchen Parkplatz moechten Sie belegen?  > ";
	cin >> i_parkplatz_nummer;

	while (Lkw_P[i_parkplatz_nummer - 1] == int(1) || i_parkplatz_nummer > 50 || i_parkplatz_nummer < 1) {
		if (Lkw_P[i_parkplatz_nummer - 1] == int(1)) {
			cout << "Dieser Parkplatz ist bereits besetzt, Vorgang wiederholen." << endl;
		}
		if (i_parkplatz_nummer > 50 || i_parkplatz_nummer < 1) {
			cout << "Ungueltige Parkplatznummer, Vorgang wiederholen." << endl;
		}
		cout << "Wieviel Stunden moechten Sie parken?:  > ";
		cin >> i_anzahl_stunden;

		cout << "Welchen Parkplatz moechten Sie belegen?  > ";
		cin >> i_parkplatz_nummer;
	}
	aiStunden[i_parkplatz_nummer - 1] += int(i_anzahl_stunden);
	Lkw_P[i_parkplatz_nummer - 1] = 1;
}