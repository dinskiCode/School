#include <iostream>

using namespace std;

void bubble_sort();

int main() {
    bubble_sort();
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