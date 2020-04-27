#include<iostream>

using namespace std;

void main()
{
	//Variablen initialisieren
	int i_option = 0;
	int i_parkplatzNr = 0;
	int i_anzahlNichtBelegt = 0;

	// Parkplaetze
	bool platzBelegtNr1 = false;
	bool platzBelegtNr2 = false;
	bool platzBelegtNr3 = false;
	bool platzBelegtNr4 = false;
	bool platzBelegtNr5 = false;
	bool platzBelegtNr6 = false;
	bool platzBelegtNr7 = false;
	bool platzBelegtNr8 = false;
	bool platzBelegtNr9 = false;
	bool platzBelegtNr10 = false;

	cout << "---------------------------------------";
	cout << "\n-----Parkplatz Ueberwachungssystem-----";
	cout << "\n---------------------------------------";

	while (true)
	{
		cout << "\n Bitte waehlen Sie eine Option aus.";
		cout << "\n 1: Auto parkt ein";
		cout << "\n 2: Geparkte Autos ausgeben.";
		cout << "\n 3: Auto parkt aus";
		cout << "\n 4: 10 Parkplaetze mieten";
		cout << "\n 5: Anzahl nicht belegter Parkplaetze bestimmen";
		cout << "\n 6: Erster, freier Parkplatz";
		cout << "\n Gewaehlte Option: ";
		cin >> i_option;

		switch (i_option)
		{
		case 1://UseCase 1
			do
			{
				cout << "\nAuto will parken.";
				cout << "\nAngesteuerte Parkplatz Nr.: ";
				cin >> i_parkplatzNr;
			} while (i_parkplatzNr < 1 || i_parkplatzNr > 10);

            // Wie soll man hier auf die bool-variablen zugreifen koennen ??? --> kein Array...
			if ()
			{
				cout << "Parkplatz mit der Nummer " << i_parkplatzNr << " ist bereits besetzt. Auto faehrt weiter.";
			}
			else
			{
				... // Parkplatz mit der Nummer parkplatzNr besetzt

				cout << "Parkplatz mit der Nummer " << i_parkplatzNr << " wurde besetzt: " << ...;
			}

			break;
		case 2: //UseCase 2
			cout << "\nAktuelle Parkplatzbelegung: ";

			for (int i = 0; i < 10; i++)
			{
				cout << "|" << ...;
			}

			cout << "|\n";

			break;
		case 3: //UseCase 3
			//TODO: Verpflichtend zu implementieren.
			break;
		case 4: //UseCase 4
			//TODO: Optional zu implementieren.
			break;
		case 5: //UseCase 5
			//TODO: Optional zu implementieren.
			break;
		case 6: //UseCase 6
			//TODO: Optional zu implementieren.
			break;
		default:
			cout << "Option existiert nicht. Bitte wählen Sie eine andere Option aus.";
		}
	}
}


// Selbstgeschriebene Version (zu spaet gemerkt, dass die vorlage verwendet werden muss...)
//#include <iostream>
//
//using namespace std;
//
//void use_case_eins(int *parkplatz, int plaetze);    // verpflichtend
//void use_case_zwei(int *parkplatz, int plaetze);    // verpflichtend
//void use_case_drei(int *parkplatz, int plaetze);    // verpflichtend
//void use_case_vier(int *parkplatz, int plaetze);    // optional
//void use_case_fuenf(int *parkplatz, int plaetze);   // optional
//void use_case_sechs(int *parkplatz, int plaetze);   // optional
//
//
//int main() {
//    int parkplatz[10] = {0};
//    int plaetze = 10;
//    use_case_eins(parkplatz, plaetze);
//    use_case_zwei(parkplatz, plaetze);
//    use_case_drei(parkplatz, plaetze);
//    use_case_vier(parkplatz, plaetze);
//    use_case_fuenf(parkplatz, plaetze);
//    use_case_sechs(parkplatz, plaetze);
//
//    cout << endl;
//    return 0;
//}
//
//
//void use_case_eins(int *parkplatz, int plaetze) {
//    bool geparkt = false;
//
//    for (int i = 0; i < plaetze; i++) {
//        if (geparkt == false) {
//            if (parkplatz[i] == 0) {
//                parkplatz[i] = 1;
//                geparkt = true;
//                cout << "Parkplatz-Nr. [" << i+1 << "] wurde belegt (Kontrollausgabe)" << endl;
//            }
//        }
//    }
//    if (geparkt == false) {
//        cout << "Alle Parkplaetze sind bereits belegt! Verlasse Parkplatz...";
//    }
//}
//
//void use_case_zwei(int *parkplatz, int plaetze) {
//    for (int i = 0; i < plaetze; i++) {
//        cout << "|" << parkplatz[i];
//    }
//    cout << "|";
//}
//
//// bei use case drei war mir nicht ganz klar, was genau implementiert werden soll
//void use_case_drei(int *parkplatz, int plaetze) {
//    // "Ein Auto parkt aus und faehrt weg ?
//    parkplatz[0] = 0;   // wieder frei
//}
//
//void use_case_vier(int *parkplatz, int plaetze) {
//    cout << "\n";
//    for (int i = 0; i < plaetze; i++) {
//        parkplatz[i] = 1;
//    }
//    use_case_zwei(parkplatz, plaetze);  // nur zur Kontrolle
//    cout << "  --> Alle " << plaetze << " Parkplaetze wurden erfolgreich reserviert!";
//}
//
//void use_case_fuenf(int *parkplatz, int plaetze) {
//    cout << "\n";
//    int i = 0;
//    while (i < plaetze && parkplatz[i] != 0) {
//        i++;
//    }
//    if (parkplatz[9] == 1) {
//        cout << "Alle Parkplaetze sind belegt!";
//    } else {
//        cout << "Parkplatz-Nr. [" << i+1 << "] ist frei!";
//    }
//}
//
//void use_case_sechs(int *parkplatz, int plaetze) {
//    cout << "\n";
//    int freie_plaetze = 0;
//    for (int i = 0; i < plaetze; i++) {
//        if (parkplatz[i] == 0) {
//            freie_plaetze++;
//        }
//    }
//    cout << "Aktuell sind " << freie_plaetze << " Parkplaetze nicht belegt.";
//}
