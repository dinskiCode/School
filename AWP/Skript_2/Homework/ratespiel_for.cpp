#include <iostream>

using namespace std;

int main() {

    int i_Zahl;
    int i_Versuch;
    int i_Versuch_Zaehler = 1;
    int i_max_Versuche = 3;

    cout << "Spieler 1: Geben Sie Ihre Zahl ein (zwischen 1 und 10):\n";
    cin >> i_Zahl;
    system("clear");

    for (;i_Versuch_Zaehler <= i_max_Versuche; i_Versuch_Zaehler++) {

        cout << "\nSpieler 2: Raten Sie eine Zahl zwischen 1 und 10:\n";
        cin >> i_Versuch;

        if (i_Versuch < i_Zahl) {
            cout << "Die geratene Zahl war zu klein.\n";
        }
        else if (i_Versuch > i_Zahl) {
            cout << "Die geratene Zahl war zu groß.\n";
        } else {
            cout << "\nZahl erraten - Sehr gut!";
            break;
        }
    }

    if (i_Versuch_Zaehler >= i_max_Versuche) {   // muss >= sein, wegen post-inkrement --> i_Versuch_Zaehler wird so = 4!
        cout << "\nSie haben Ihre" << i_max_Versuche << " Versuche aufgebraucht.\nDie Zahl wäre " << i_Zahl << " gewesen.";
    }

    getchar();
    getchar();
    return 0;
}
