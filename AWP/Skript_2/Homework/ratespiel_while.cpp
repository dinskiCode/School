#include <iostream>

using namespace std;

int main() {

    int i_Zahl; // von Spieler eins festgelegte Zahl
    int i_Versuch;  // die Zahl, die Spieler zwei nennt
    int i_Versuch_Zaehler = 1;
    int i_max_Versuche = 3;
    
    cout << "Spieler 1: Geben Sie Ihre Zahl ein (zwischen 1 und 10):\n";
    cin >> i_Zahl;
    system("clear");    
   
    do {
        
        cout << "\nSpieler 2: Raten Sie eine Zahl zwischen 1 und 10:\n";
        cin >> i_Versuch;
        
        if (i_Versuch < i_Zahl) {
            cout << "Die geratene Zahl war zu klein.\n"; 
        } else if (i_Versuch > i_Zahl) {
            cout << "Die geratene Zahl war zu groß.\n";
        }
    
        i_Versuch_Zaehler += 1;        

    } while (i_Versuch != i_Zahl && i_Versuch_Zaehler <=  i_max_Versuche);

    if (i_Versuch_Zaehler > 3) {
        cout << "\nSie haben Ihre 3 Versuche aufgebraucht.\nDie Zahl wäre " << i_Zahl << " gewesen.";
    } 
    else if (i_Versuch == i_Zahl) {
        cout << "\nZahl erraten - Sehr gut!";
    }

getchar();
getchar();
return 0;

}
