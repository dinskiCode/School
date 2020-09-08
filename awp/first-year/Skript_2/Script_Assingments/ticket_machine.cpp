#include <iostream>

using namespace std;

int main() {
    float f_time = 0;
    char button_pressed;
    float f_bill = 0;
    
    cout << "ticket machine\n";
    cout << "manual\n";
    
    bool loop = true;
    while(loop == true) {
        cin >> button_pressed;
        if(button_pressed == 'p') {
            f_time += 15;
            f_bill += 0.5;
        }
        else if (button_pressed == 'pp') {
            f_time += 30;
            f_bill += 1;
        }
        else if (button_pressed == 'o') {
            cout << "Parkdauer: " << f_time << " Minuten. Zu zahlen: " << f_bill <<"€";
            loop = false;
        }
        else {
            cout << "Vorgang abgebrochen";
            loop = false;
        }
        
        if(f_time >= 120) {
            f_time = 120;
            cout << "Maximum erreicht! ";
            cout << "Parkdauer: " << f_time << " Minuten. Zu zahlen: " << f_bill <<"€";
        }
    }
    cout << "\n";
    getchar();
    return 0;
}
