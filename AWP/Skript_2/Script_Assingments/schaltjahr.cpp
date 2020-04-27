#include <iostream>

using namespace std;

int main() {
    
    int jahr;
    bool schaltjahr = false;
    cout << "Jahreszahl eingeben: ";
    cin >> jahr;

    if(jahr%4 == 0) {
        if(jahr%100 == 0) {
            if(jahr%400 == 0) {
                schaltjahr = true;
            }
        } else {
            schaltjahr = true;
        }
    }
    
    if(schaltjahr == true) {
        cout << "Schaltjahr!";
    } else {
        cout << "Kein Schaltjahr!";
    }
    
    cout <<"\n";
    getchar();
    return 0;

}
