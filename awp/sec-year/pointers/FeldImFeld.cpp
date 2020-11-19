#include <iostream>

using namespace std;

// 1-c
int finde_zahl(int gesuchte_zahl, int arr[], int len);
// 2-a
int vergleiche_arrays(int arr[], int arr_vergleich[], int len_arr_eins, int len_arr_zwei);


int main() {
    const int len = 10;
    int arr[] = {5, 2, 67, 23, 11, 8, 1, 6, 22, 0};
    int arr_vergleich[] = {99, 2, 3, 4, 5};
    int num = 0;
    int num_index = 0;
    int anzahl_gleicher_zahlen = 0;

    // 1-c
    cout << "Zahl eingeben: ";
    cin >> num;
    num_index = finde_zahl(num, arr, len);
    if (num_index != -1) {
        cout << "Die Zahl " << num << " befindet sich an der Stelle " << num_index << endl;
    } else {
        cout << "Die Zahl " << num << " konnte nicht gefunden werden" << endl; 
    }

    // 2-a
    cout << "\nVergleiche Arrays:";

    anzahl_gleicher_zahlen = vergleiche_arrays(arr, arr_vergleich, 10, 5);
    if (anzahl_gleicher_zahlen > 0) {
        cout << " " << anzahl_gleicher_zahlen <<" Zahlen sind in beiden Arrays vorhanden.";
    } else {
        cout << "Die beiden Arrays enthalten stimmen an nicht in wenigstens einer Zahl ueberein.";
    }

    return 1;
}

// 1-c
int finde_zahl(int gesuchte_zahl, int arr[], int len) {
    int number_index = -1;
    for (int i = 0; i < len; i++) {
        if (arr[i] == gesuchte_zahl) {
            number_index = i;
            break;
        }
    }
    return number_index;
}

// 2-a
int vergleiche_arrays(int arr[], int arr_vergleich[], int len_arr_eins, int len_arr_vergleich) {
    int anzahl_gleicher_zahlen = 0;
    for (int i = 0; i < len_arr_eins; i++) {
        if (finde_zahl(arr[i], arr_vergleich, len_arr_vergleich) != -1) {
            anzahl_gleicher_zahlen++;
        }
    }
    return anzahl_gleicher_zahlen;
}


