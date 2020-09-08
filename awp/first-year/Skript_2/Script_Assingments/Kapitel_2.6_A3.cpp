#include <iostream>

using namespace std;

int main() {
/*
Solange cin, bis Punkt eingegeben wird. Dann soll die Anzahl der bisher
eingegebenen Vokale ausgegeben werden.
*/
char c_Eingabe;
int i_Vokalzaehler = 0;
    
    do {
            
        cin >> c_Eingabe;
        switch (c_Eingabe) {
    
            case 'a':
            case 'e':
            case 'i':
            case 'o':
            case 'u':
                i_Vokalzaehler += 1;
                break;
            default:
                break;

        }
    
    } while(c_Eingabe != '.');
    
    cout << "\n" << i_Vokalzaehler << endl;
    
getchar();
getchar();
return 0;
}
