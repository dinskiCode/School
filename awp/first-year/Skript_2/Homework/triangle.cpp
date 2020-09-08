#include <iostream>

using namespace std;

int main() {
    int i_treeHeight = 0; 
    int i_space = 0;
        
    cout << "\nHoehe des Baumes\neingeben <5-40>: ";
    cin >> i_treeHeight;
    cout << "\n";

    for (int i = 0; i < i_treeHeight; i++) {
        for (int l = i_treeHeight; l > i_space; l--) {
            cout << " ";
        } 
        for (int k = 0; k < i; k++) {
            cout << "*";
        }
        for (int l = 0; l < i+1; l++) {
            cout << "*";
        }
        cout << "\n";
        i_space++;
    }
    getchar();
    return 0;

}
