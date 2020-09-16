#include <iostream>

using namespace std;

int main() {
    struct Sportler {
        string Name;
        string Vorname;
        int alter;
    };

    struct Ergebnis {
        double hundert_meter = 0;
        double speerwerfen[6] = {0};
        double kugelstossen[6] = {0};
        double weitsprung[3] = {0};
    };

    struct Sportfest {
        Sportler athlet;
        Ergebnis ergebnis;
    };

    Sportler athlet_1 = {"Meier", "Peter", 28};
    Ergebnis ergebnisse_athlet_1;
    ergebnisse_athlet_1.hundert_meter = 10.2;
    ergebnisse_athlet_1.speerwerfen[0] = 70.4;
    ergebnisse_athlet_1.kugelstossen[0] = 83.2;
    ergebnisse_athlet_1.kugelstossen[1] = 82.7; // z.B. 82.7 Meter beim zweiten Versuch im Kugelstoßen
    ergebnisse_athlet_1.weitsprung[0] = 6.92;

    Sportfest sportfest_daten[20];  // weil 20 Teilnehmer/Ahtleten
    sportfest_daten[0].athlet = athlet_1;
    sportfest_daten[0].ergebnis = ergebnisse_athlet_1;

    cout << "Sportler Vorname: "<< sportfest_daten[0].athlet.Vorname << ", Ergebnis zweiter Versuch Kugelstoßen: " << sportfest_daten[0].ergebnis.kugelstossen[1];

    cout << endl;
    return 1;
}