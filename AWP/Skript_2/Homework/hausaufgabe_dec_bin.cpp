#include <iostream>

using namespace std;

int main() {
/*
Kapitel 2, Aufgabe 3: Dezimalzahl als Binaerzahl in umgekehrter Reihenfolge ausgeben. 
*/
int i_Dezimal; 

cout << "Dezimalzahl: ";
cin >> i_Dezimal;

while (i_Dezimal > 0) {
    
    cout << i_Dezimal % 2;
    i_Dezimal = i_Dezimal/2;
    
}

getchar();
getchar();
return 0;

}
