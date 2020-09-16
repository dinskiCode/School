#include <iostream>
#include <time.h>
#include <string>

using namespace std;

// Funktionen
int wuerfle();

//Datenstrukturen
struct t_wuerfelspiel {
    string name;
    int ergebnis[10]; 
};

int main() {
    cout << "\n\t--- Das Würfelspiel ---\n\n";
    srand((unsigned)time(NULL));

    const int spieler = 8;
    const int wuerfe = 10;
    t_wuerfelspiel mitspieler[spieler];
    string namen[spieler] = {"Hans", "Petra", "Lena", "Fritz", "Horst", "Michi", "Anna", "Peter"};
    int hauefigkeiten[6] = {0};

    for (int i = 0; i < spieler; i++) {
        mitspieler[i].name = namen[i];
        cout << mitspieler[i].name <<":\t";
        for (int k = 0; k < wuerfe; k++) {
            mitspieler[i].ergebnis[k] = wuerfle();
            cout << mitspieler[i].ergebnis[k] << "  ";
        }
        cout << endl;
    }

    // Haeufigkeiten
    for (int i = 0; i < spieler; i++) {
        for (int k = 0; k < wuerfe; k++) {
            switch (mitspieler[i].ergebnis[k])
            {
            case 1:
                hauefigkeiten[0] += 1;
                break;
            case 2:
                hauefigkeiten[1] += 1;
                break;
            case 3:
                hauefigkeiten[2] += 1;
                break;
            case 4:
                hauefigkeiten[3] += 1;
                break;
            case 5:
                hauefigkeiten[4] += 1;
                break;
            case 6:
                hauefigkeiten[5] += 1;
                break;
            default:
                break;
            }
        }
    }

    cout << "\nZiehungshaeufigkeiten der Zahlen 1-6:" << endl;
    for (int i = 0; i < 6; i++) {
        cout << "Die Zahl " << i+1 << ": " << hauefigkeiten[i] << " mal" << endl;
    }
    

    /*
    --- OLD ---
    const int spieler = 8; 
    const int wuerfe = 10;
    int ergebnisse[spieler][wuerfe] = {0};
    int hauefigkeiten[6] = {0}; 

    for (int i = 0; i < spieler; i++) {
        cout << "Spieler " << i+1 << ":\t";
        for (int k = 0; k < wuerfe; k++) {
            ergebnisse[i][k] = wuerfle();
            cout << "  " << ergebnisse[i][k];
        }
        cout << "\n";
    }

    // Haeufigkeiten
    for (int i = 0; i < spieler; i++) {
        for (int k = 0; k < wuerfe; k++) {
            switch (ergebnisse[i][k])
            {
            case 1:
                hauefigkeiten[0] += 1;
                break;
            case 2:
                hauefigkeiten[1] += 1;
                break;
            case 3:
                hauefigkeiten[2] += 1;
                break;
            case 4:
                hauefigkeiten[3] += 1;
                break;
            case 5:
                hauefigkeiten[4] += 1;
                break;
            case 6:
                hauefigkeiten[5] += 1;
                break;
            default:
                break;
            }
        }
    }

    cout << "\nZiehungshaeufigkeiten der Zahlen 1-6:" << endl;
    for (int i = 0; i < 6; i++) {
        cout << "Die Zahl " << i+1 << ": " << hauefigkeiten[i] << " mal" << endl;
    }*/
    cout << endl;

    return 1;
} 

int wuerfle() {
    return rand() % 6 + 1;
}