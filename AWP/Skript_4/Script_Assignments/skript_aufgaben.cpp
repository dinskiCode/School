/*
Quick-sort funktioniert noch nicht, das ist alles nur ein bisschen hingeschmiert. Wird noch ergänzt.
*/
#include <iostream>

using namespace std;

// Funktionsprototypen bzw. Funktionsdeklarationen
void one_testarr();
void parkplatz();
void parkplatz_stunden();
void bubble_sort();
void quick_sort();

int main() {
    //one_testarr();        YES
    //parkplatz();          YES
    //parkplatz_stunden();  YES
    //bubble_sort();        //YES
    quick_sort();
    cout << endl;
    return 0;
}

void one_testarr() {
    int first_arr[10] = {0, 1, 2, 3};
    for (int i = 0; i < 10; i++) {
        cout << first_arr[i];
    }
    cout << endl;
}

void parkplatz() {
    int parkplatz[50] = {0};
    for (int i = 0; i < 50; i++) {
        if (parkplatz[i] == 0) {
            // reserviere parkplatz
            parkplatz[i] = 1;
        }
    }
    for (int i = 0; i < 50; i++) {
        cout << parkplatz[i];
    }
    cout << endl;
}

void parkplatz_stunden() {
    int stunden_wahl = 0;
    int platz_wahl = 0;

    int parkplatz[50][2];
    // initialisiere parkplätze:
    for (int i = 0; i < 50; i++) {
        parkplatz[i][0] = 0;
        parkplatz[i][1] = 0;
    }
    while(true) {
        cout << "\n\nMELDUNG:" << endl;
        for (int i = 0; i < 50; i++) {
            if ((i+1)%2 == 0) {
                if (parkplatz[i][0] == 0) {
                    cout << "\t\tP-Nr:" << i+1 << " = frei (" << parkplatz[i][1] << ")" << endl;
                } else {
                    cout << "\t\tP-Nr:" << i+1 << " = \033[1;31mbelegt\033[0m (" << parkplatz[i][1] << ")" << endl;
                }
            } else {    // TODO: reserved case (blue color output)
                if (parkplatz[i][0] == 0) {
                    cout << "P-Nr:" << i+1 << " = frei (" << parkplatz[i][1] << ")";
                } else {
                    cout << "P-Nr:" << i+1 << " = \033[1;31mbelegt\033[0m (" << parkplatz[i][1] << ")";
                }
            }
        }

        cout << "Wieviel Stunden moechten Sie parken?: > ";
        cin >> stunden_wahl;
        cout << "Welchen Parkplatz moechten Sie belegen? > ";
        cin >> platz_wahl;

        parkplatz[platz_wahl-1][0] = 1;
        parkplatz[platz_wahl-1][1] += stunden_wahl;
    }
    cout << endl;
}

void bubble_sort() {
    int behaelter = 0;
    int sort_me[10] = {44,10,1,98,1002,1,21,23,3,28};
    for (int i = 0; i < 10; i++) {
        for (int i = 1; i < 10; i++) {
            if (sort_me[i] < sort_me[i-1]) {
                behaelter = sort_me[i];
                sort_me[i] = sort_me[i-1];
                sort_me[i-1] = behaelter;
            }
        }
    }
    for (int i = 0; i < 10; i++) {
        cout << sort_me[i] <<" ";
    }
}

void quick_sort() {
    int sort_me[5] = {4, 10, 1, 5, 3};
    int length = 0;
    int length_index = 0;
    int pivot = 0;
    int smaller_ind = 0;
    int bigger_ind = 0;
    // pointer = &sort_me;
    // dereference_pointer = *sort_me;  ???
    length = sizeof(sort_me)/sizeof(*sort_me);
    length_index = length - 1;
    pivot = sort_me[length_index];
    smaller_ind = sort_me[0];
    bigger_ind = sort_me[length_index - 1];

    for (int i = smaller_ind; i < length_index-1; i++) {
        if (sort_me[i] < pivot) {
            smaller_ind = sort_me[i];
        } else {
            break;
        }
    }
    cout << bigger_ind << "====";
    for (int i = sort_me[3]; i >= 0; i--) {
        if (sort_me[i] > pivot) {
            bigger_ind = sort_me[i];
            cout << sort_me[i] << "=====";
        } else {
            break;
        }
    }

    cout << smaller_ind << endl;
    cout << bigger_ind;
}

