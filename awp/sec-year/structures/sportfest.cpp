#include <iostream>

using namespace std;

int main() {
    struct Sportler {
        string Name;
        string Vorname;
        int alter;
    };

    struct Ergebnisse {
        double hundert_meter = 0;
        double speerwerfen[6] = {0};
        double kugelstossen[6] = {0};
        double weitsprung[3] = {0};
    };

    struct Sportfest {
        Sportler athlet;
        Ergebnisse ergebnis;
    };

    Sportfest sportfest_daten[20];  // weil 20 Teilnehmer/Ahtleten
    Sportler athlet = {"Meier", "Hans", 30};
    Sportler athlet_2 = {"Mueller", "Horst", 32};
    sportfest_daten[0].athlet = athlet;
    sportfest_daten[1].athlet = athlet_2;

    for (int i = 0; i < 3; i++) {
        for (int k = 0; k < 2; k++) {
            cout << k+1 << ". Sportler " << i+1 << ". Versuch: ";
            cin >> sportfest_daten[k].ergebnis.weitsprung[i];
        }
        cout << endl;
    }

    // Bestweite
    double bestweite = 0;

    for (int i = 0; i < 3; i++) {
        if (sportfest_daten[0].ergebnis.weitsprung[i] > bestweite) {
            bestweite = sportfest_daten[0].ergebnis.weitsprung[i];
        }
    }
    cout << "Die Bestweite von "<<  sportfest_daten[0].athlet.Vorname << " " << sportfest_daten[0].athlet.Name << " betrug " << bestweite << "m";

    // Personal best für jeden sportler
    cout << "\n\n";
    double personal_best = 0;
    for (int i = 0; i < 2; i++) {
        personal_best = 0;
        for (int k = 0; k < 3; k++) {
            if (sportfest_daten[i].ergebnis.weitsprung[k] > personal_best) {
                personal_best = sportfest_daten[i].ergebnis.weitsprung[k];
            }
        }
        cout << "Die persoenliche bestweite von " << sportfest_daten[i].athlet.Name << ": " << personal_best << endl;
    }

    // Weitsprung Sieger
    double siegerweite = 0;
    int versuch = 0;
    Sportfest sieger;
    for (int i = 0; i < 2; i++) {
        for (int k = 0; k < 3; k++) {
            if(sportfest_daten[i].ergebnis.weitsprung[k] > siegerweite) {
                siegerweite = sportfest_daten[i].ergebnis.weitsprung[k];
                versuch = k;
                sieger = sportfest_daten[i];
            }
        }
    }
    cout << "\n\nDer Gesamtsieger ist " << sieger.athlet.Name << " mit einer Bestweite von " << siegerweite << "m im " << versuch+1 << ". Versuch";

    cout << endl;
    return 1;
}