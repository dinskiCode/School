#include <iostream>
#include <windows.h>
#include <stdlib.h>

#define GRUEN           0x0002
#define ROT             0x0004
#define NORMAL          0x0007
#define HELLBLAU        0x0009

using namespace std;
int Lkw_P[50]={0,1,0,1,0,2}; //Belegung des 2ten und 4ten Parkplatzes, Reservierung des 6ten Parkplatzes und "frei"-Status aller anderen Parkplätze

void Statusuebersicht(); //Funktion zur Ausgabe aller Parkplätze, Belegungsstatus und Belegungsstunden
void Farbe(WORD color);  //Funktion zum Setzen der Ausgabefarben des Textes
void Parkplatzbelegung();//Funktion zur Abfrage und Belegung eines Parkplatzes

int main ()
{
	Farbe(NORMAL);

	//HIER SOLL DER AUFRUF DER SORTIERFUNKTION ERFOLGEN
	cout << endl << "MELDUNG:" << endl; //Ausgabe beim ersten Durchlauf (nur für korrekte Formatierung nötig)

	while(1){
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
void Statusuebersicht(){



}



void Parkplatzbelegung() //Funktion zur Abfrage und Belegung eines Parkplatzes
{



}