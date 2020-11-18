#include <iostream>

using namespace std;

// 1-c
int find_num(int num, int arr[], int len);
// 2-a
int vergleiche_arrays(int arr[], int arr_vergleich[], int len, int len_vergleich);


int main() {
    const int len = 10;
    int arr[] = {5, 2, 67, 23, 11, 8, 1, 6, 22, 0};
    int b[] = {1,2,3};
    int num = 0; 
    cout << "Zahl eingeben: ";
    cin >> num;
    int num_index = find_num(num, arr, len);
    if (num_index != -1) {
        cout << "Die Zahl " << num << " befindet sich an der Stelle " << num_index << endl;
    } else {
        cout << "Die Zahl " << num << " konnte nicht gefunden werden" << endl; 
    }
    //cout << "\nVergleiche Arrays:";
    //cout << vergleiche_arrays(arr, b, 10, 3) << " Zahlen sind in beiden Arrays vorhanden.";

    return 1;
}

// 1-c
int find_num(int num, int arr[], int len) {
    int number_index = -1;
    for (int i = 0; i < len; i++) {
        if (arr[i] == num) {
            number_index = i;
            break;
        }
    }
    return number_index;
}

// 2-a
int verlgeiche_arrays(int arr[], int arr_vergleich[], int len) {
    
}


