#include <iostream>

using namespace std;

int main() {
	cout << "Drehkreuzsteuerung\n---------------------------" << endl;
	
	for(int i = 30; i > 0; i--) {
		
		cout << "Noch " << i << " Plätze verfügbar.\nBitte einsteigen";
		getchar();
		cout << " - Signal Drehkreuz -\n";
		
	}
	
	cout << "\n* Bitte nicht mehr einsteigen! *" << endl;

	return 0;
}
