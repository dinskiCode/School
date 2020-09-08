#include <iostream>

using namespace std;

int main() {
    float f_Anhalteweg = 0;
    float f_Geschwindigkeit = 0;
    float f_Abstand = 0;                 
    int i_Verzoegerung = 0;
    int i_Reaktion = 0;
    int i_switchVerzoegerung = 0;
    char c_Nochmal = 'j';    

    do {
    
        system("clear");
        cout << "-- Bestimmung des Anhaltewegs --" << endl;
        
        cout << "\nBitte geben Sie die gefahrene Geschwindigkeit in km/h ein: ";
        cin >> f_Geschwindigkeit;
        
        cout << "\nBitte geben Sie die restliche Strecke bis zum Hindernis in m ein: ";
        cin >> f_Abstand;

        cout << "\nBitte geben Sie die Reaktionszeit in s (Schrecksekunde ca. 1) ein: ";
        cin >> i_Reaktion;

        cout << "\nBitte geben Sie die Verzoegerung an: ";
        cout << "\nDie Verzoegerungswerte zu folgenden Situationen sind vorhanden: \n\n1: Nasser Asphalt\n2: Nasser Beton\n3: Trockener Asphalt\n4: Trockener Beton";
        cout << "\n\n\nBitte geben Sie einen Menuepunkt (zwischen 1 und 4) ein: ";
        cin >> i_switchVerzoegerung;
        
        switch (i_switchVerzoegerung) {
    
            case 1: 
                i_Verzoegerung = 3;
                break;

            case 2:
                i_Verzoegerung = 5;
                break;
            
            case 3: 
                i_Verzoegerung = 7;
                break;
            
            case 4:
                i_Verzoegerung = 9;
                break;

            default:
                cout << "\nFehlerhafte Eingabe. Berechnung erfolgt nun für den Fall 'Trockener Asphalt'" << endl;
                i_Verzoegerung = 3;    
        }
        cout << "\n-------------------------------------------------------------------" << endl;
         
        cout << "\nRestlicher Weg bis zum Hindernis: " << f_Abstand;
        f_Anhalteweg = (f_Geschwindigkeit/3.6)*i_Reaktion + (((f_Geschwindigkeit/3.6)*(f_Geschwindigkeit/3.6))/(2*i_Verzoegerung));
        cout << "\nBenoetigter Anhalteweg: " << f_Anhalteweg;

        if (f_Anhalteweg < f_Abstand) {
            cout << "\n\nGlueck gehabt!";
        } else {
            cout << "\n\nEs kam zum Crash!";
        }
        
        cout << "\n\nWollen Sie noch eine \nBerechnung durchfuehren (J/j):";
        cin >> c_Nochmal;
    
    } while (c_Nochmal == 'J' || c_Nochmal == 'j');
 


    getchar();
    return 0;

}
