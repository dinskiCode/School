#include <iostream>
#include <time.h>

using namespace std;

//
int wuerfle();

int main() {
    cout << "\n\t\t\tDas Würfelspiel\n\n";
    srand((unsigned)time(NULL));
    int spieler = 8; 
    int wuerfe = 10;
    int ergebnisse[spieler][wuerfe]; 

    for (int i = 0; i < spieler; i++) {
        cout << "Spieler " << i+1 << ":\t";
        for (int k = 0; k < wuerfe; k++) {
            ergebnisse[i][k] = wuerfle();
            cout << "  " << ergebnisse[i][k];
        }
        cout << "\n";
    }

    // Haeufigkeiten
    int hauefigkeiten[6] = {0};
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
    }
    cout << endl;

    return 1;
} 

int wuerfle() {
    return rand() % 6 + 1;
}