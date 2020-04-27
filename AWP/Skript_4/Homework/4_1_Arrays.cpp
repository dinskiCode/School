#include <iostream>

using namespace std;

void use_case_eins(int *parkplatz, int plaetze);    // verpflichtend
void use_case_zwei(int *parkplatz, int plaetze);    // verpflichtend
void use_case_drei(int *parkplatz, int plaetze);    // verpflichtend
void use_case_vier(int *parkplatz, int plaetze);    // optional
void use_case_fuenf(int *parkplatz, int plaetze);   // optional
void use_case_sechs(int *parkplatz, int plaetze);   // optional


int main() {
    int parkplatz[10] = {0};
    int plaetze = 10;
    use_case_eins(parkplatz, plaetze);
    use_case_zwei(parkplatz, plaetze);
    use_case_drei(parkplatz, plaetze);
    use_case_vier(parkplatz, plaetze);
    use_case_fuenf(parkplatz, plaetze);
    use_case_sechs(parkplatz, plaetze);

    cout << endl;
    return 0;
}


void use_case_eins(int *parkplatz, int plaetze) {
    bool geparkt = false;

    for (int i = 0; i < plaetze; i++) {
        if (geparkt == false) {
            if (parkplatz[i] == 0) {
                parkplatz[i] = 1;
                geparkt = true;
                cout << "Parkplatz-Nr. [" << i+1 << "] wurde belegt (Kontrollausgabe)" << endl;
            }
        }
    }
    if (geparkt == false) {
        cout << "Alle Parkplaetze sind bereits belegt! Verlasse Parkplatz...";
    }
}

void use_case_zwei(int *parkplatz, int plaetze) {
    for (int i = 0; i < plaetze; i++) {
        cout << "|" << parkplatz[i];
    }
    cout << "|";
}

// bei use case drei war mir nicht ganz klar, was genau implementiert werden soll
void use_case_drei(int *parkplatz, int plaetze) {
    // "Ein Auto parkt aus und faehrt weg ?
    parkplatz[0] = 0;   // wieder frei
}

void use_case_vier(int *parkplatz, int plaetze) {
    cout << "\n";
    for (int i = 0; i < plaetze; i++) {
        parkplatz[i] = 1;
    }
    use_case_zwei(parkplatz, plaetze);  // nur zur Kontrolle
    cout << "  --> Alle " << plaetze << " Parkplaetze wurden erfolgreich reserviert!";
}

void use_case_fuenf(int *parkplatz, int plaetze) {
    cout << "\n";
    int i = 0;
    while (i < plaetze && parkplatz[i] != 0) {
        i++;
    }
    if (parkplatz[9] == 1) {
        cout << "Alle Parkplaetze sind belegt!";
    } else {
        cout << "Parkplatz-Nr. [" << i+1 << "] ist frei!";
    }
}

void use_case_sechs(int *parkplatz, int plaetze) {
    cout << "\n";
    int freie_plaetze = 0;
    for (int i = 0; i < plaetze; i++) {
        if (parkplatz[i] == 0) {
            freie_plaetze++;
        }
    }
    cout << "Aktuell sind " << freie_plaetze << " Parkplaetze nicht belegt.";
}