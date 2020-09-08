#include <iostream>

using namespace std;

int main() {
	float f_Anhalteweg = 0;
	float f_Abstand = 0;
	float f_Geschwindigkeit = 0;
	int i_Verzoegerung = 0;
	int i_Reaktion = 0;
	char c_Nochmal;
	
	do {
		system("cls");
		cout << "Bestimmung des Anhaltewegs";
		cout << "Werte eingeben: \n";
		
		cout << "Geschwindigkeit: ";
		cin >> f_Geschwindigkeit;

		cout << "\nAbstand: ";
		cin >> f_Abstand;

		cout << "\nReaktion: ";
		cin >> i_Reaktion;

		cout << "\nVerzoegerungswert: ";
		cin >> i_Verzoegerung;

		cout << "\n----------------------------------------------------\n";

		f_Geschwindigkeit = f_Geschwindigkeit / 3.6;
		f_Anhalteweg = f_Geschwindigkeit * i_Reaktion + f_Geschwindigkeit * f_Geschwindigkeit / (2 * i_Verzoegerung);

		if (f_Anhalteweg < f_Abstand) {
			cout << "\nGlueck gehabt";
		}
		else {
			cout << "\nPech gehabt";
		}

		cout << "\nWollen Sie die Berechnung nocheinmal durchfuehren?";
		cin >> c_Nochmal;

		
		getchar();
	} while (c_Nochmal == 'j' || c_Nochmal == 'J');





}