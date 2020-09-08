#include <iostream>

using namespace std;


// Funktionsdeklarationen 
void print_game();
void menu();
void singleplayer();
void multiplayer();
void drop_checker();
void waehle_spalte();
void check_board_full();
void search_field();
void search_left();
void search_right();
void search_down();	// might rename this to vertical search
void search_up_right();
void search_up_left();
void search_down_left();
void search_down_right();

// Variablen
char spieler_name_a[50] = {};
char spieler_name_b[50] = {};
bool player_one = true;
int spielmodus = 0;
int spalte = 0;
char connect_four_values[5][8] = {};
bool w_p_one = false;
bool w_p_two = false;
bool board_full = false;
int checker_pos[2] = { 0, 0 };	

int main() {
	menu();

	getchar();
	getchar();
	return 0;
}

void menu() {
	cout << "Bitte waehlen Sie den Spielmodus: (1 = 1-Spieler, 2 = 2-Spieler)\nSpielmodus: ";
	cin >> spielmodus;
	if (spielmodus == 2) {
		cout << "Willkommen bei 4-gewinnt!\nBitte tragen Sie ihren Namen ein (Reihenfolge im Spiel wird zufaellig ermittelt):\n";	//TODO: zufaellige Reihenfolge
		cout << "Spieler A: << ";
		cin >> spieler_name_a;
		cout << "Spieler B: << ";
		cin >> spieler_name_b;
		multiplayer();
	}
	else {
		cout << "Singleplayer existiert noch nicht, kehre zum menu zurueck...\n\n";
		menu();
	}
}

void print_game() {
	system("cls");
	cout << " 1   2   3   4   5   6   7   8  \n";

	for (int i = 0; i < 5; i++) {
		for (int k = 0; k < 8; k++) {
			if (k < 7) {
				cout << " " << connect_four_values[i][k] << " |";
			}
			else {
				cout << " " << connect_four_values[i][k] << " \n";
			}
		}
		cout << "_______________________________\n";
		cout << "\n"; 
	}
	cout << "\n\n\n";
}

void check_board_full() {
	int empty_fields_counter = 0; 
	for (int i = 0; i < 5; i++) {
		for (int k = 0; k < 8; k++) {
			if (connect_four_values[i][k] == NULL) {
				empty_fields_counter++;
			}
		}
	}
	if (empty_fields_counter == 0) {
		board_full = true;
	}
}

void singleplayer() {
	// TODO: Create A.I. 
}

void multiplayer() {

	while (w_p_one == false && w_p_two == false && board_full == false) {
		print_game();

		if (player_one == true) {	// spieler 1 am zug
			cout << spieler_name_a << ", du bist am Zug!\n";
			waehle_spalte();
			drop_checker();
		}
		else {	// spieler 2 am zug
			cout << spieler_name_b << ", du bist am Zug!\n";
			waehle_spalte();
			drop_checker();
			player_one = true;
		}
		check_board_full();
		print_game();
	}
	if (w_p_one == true) {
		cout << "\nGlueckwunsch <<" << spieler_name_a << ">>! Du hast gegen <<" << spieler_name_b << ">> gewonnen!";
	}
	else if (w_p_two == true) {
		cout << "\nGlueckwunsch <<" << spieler_name_b << ">>! Du hast gegen <<" << spieler_name_a << ">> gewonnen!";
	}
	else {
		cout << "\nSpielfeld voll, unentschieden!";
	}
}

void drop_checker() {
	bool dropped = false;
	for (int i = 4; i >= 0; i--) {
		if (connect_four_values[i][spalte - 1] == NULL) {
			if (player_one == true) {
				connect_four_values[i][spalte - 1] = 'X';
				checker_pos[0] = i, checker_pos[1] = spalte - 1;
			}
			else {
				connect_four_values[i][spalte - 1] = 'O';
				checker_pos[0] = i, checker_pos[1] = spalte - 1;
			}
			dropped = true;
		}
		if (dropped == true) {
			break;
		}
	}
	if (dropped == true) {
		search_field();
		player_one = false;
	}
	else {
		cout << "\nDiese Spalte ist bereits voll, bitte neu waehlen!\n";
		waehle_spalte();
	}
}

void drop_checker_o() {
	cout << " ";
}

void waehle_spalte() {
	do {
		cout << "Bitte waehle eine Spalte:\n";
		cin >> spalte;
	} while (spalte < 1 || spalte > 8);
}


void search_field() {
	search_left();
	search_right();
	search_down();	// might rename this to 'search vertically'
	search_up_right();
	search_up_left();
	search_down_left();
	search_down_right();
}

void search_left() {
	int x_counter = 0;
	int o_counter = 0;
	if (checker_pos[1] < 3) {
		// do nothing 
	}
	else {
		for (int k = checker_pos[1]; k > checker_pos[1] - 4; k--) {
			if (connect_four_values[checker_pos[0]][k] == 'X') {
				x_counter++;
			}
			else if (connect_four_values[checker_pos[0]][k] == 'O') {
				o_counter++;
			}
		}
	}
	if (x_counter >= 4) {
		w_p_one = true;
	}
	else if (o_counter >= 4) {
		w_p_two = true;
	}
}

void search_right() {
	int x_counter = 0;
	int o_counter = 0;
	if (spalte > 5) {
		// do nothing
	}
	else {
		for (int k = checker_pos[1]; k < checker_pos[1] + 4; k++) {
			if (connect_four_values[checker_pos[0]][k] == 'X') {
				x_counter++;
			}
			else if (connect_four_values[checker_pos[0]][k] == 'O') {
				o_counter++;
			}
		}
	}
	if (x_counter >= 4) {
		w_p_one = true;
	}
	else if (o_counter >= 4) {
		w_p_two = true;
	}
}

void search_down() {
	int x_counter = 0; 
	int o_counter = 0; 
	if (checker_pos[0] > 1) {
		// do nothing
	}
	else {
		for (int i = checker_pos[0]; i < checker_pos[0] + 4; i++) {
			if (connect_four_values[i][checker_pos[1]] == 'X') {
				x_counter++;
			}
			else if (connect_four_values[i][checker_pos[1]] == 'O') {
				o_counter++;
			}
		}
	}
	if (x_counter >= 4) {
		w_p_one = true;
	}
	else if (o_counter >= 4) {
		w_p_two = true;
	}
}

void search_up_right() {
	int x_counter = 0; 
	int o_counter = 0; 
	int k = checker_pos[1];

	if (checker_pos[0] < 3 || checker_pos[1] > 4) {
		// do nothing 
	}
	else {
		for (int i = checker_pos[0]; i > checker_pos[0] - 4; i--) {
			if (connect_four_values[i][k] == 'X') {
				x_counter++;
			}
			else if (connect_four_values[i][k] == 'O') {
				o_counter++;
			}
			k++;
		}
	}
	if (x_counter >= 4) {
		w_p_one = true;
	}
	else if (o_counter >= 4) {
		w_p_two = true;
	}
}

void search_up_left() {
	int x_counter = 0;
	int o_counter = 0;
	int k = checker_pos[1];

	if (checker_pos[0] < 3 || checker_pos[1] < 3) {
		// do nothing 
	}
	else {
		for (int i = checker_pos[0]; i > checker_pos[0] - 4; i--) {
			if (connect_four_values[i][k] == 'X') {
				x_counter++;
			}
			else if (connect_four_values[i][k] == 'O') {
				o_counter++;
			}
			k--;
		}
	}
	if (x_counter >= 4) {
		w_p_one = true;
	}
	else if (o_counter >= 4) {
		w_p_two = true;
	}
}

void search_down_left() {
	int x_counter = 0;
	int o_counter = 0;
	int k = checker_pos[1];

	if (checker_pos[0] > 1 || checker_pos[1] < 3) {
		// do nothing 
	}
	else {
		for (int i = checker_pos[0]; i < checker_pos[0] + 4; i++) {
			if (connect_four_values[i][k] == 'X') {
				x_counter++;
			}
			else if (connect_four_values[i][k] == 'O') {
				o_counter++;
			}
			k--;
		}
	}
	if (x_counter >= 4) {
		w_p_one = true;
	}
	else if (o_counter >= 4) {
		w_p_two = true;
	}
}

void search_down_right() {
	int x_counter = 0;
	int o_counter = 0;
	int k = checker_pos[1];

	if (checker_pos[0] > 1 || checker_pos[1] > 4) {
		// do nothing 
	}
	else {
		for (int i = checker_pos[0]; i < checker_pos[0] + 4; i++) {
			if (connect_four_values[i][k] == 'X') {
				x_counter++;
			}
			else if (connect_four_values[i][k] == 'O') {
				o_counter++;
			}
			k++;
		}
	}
	if (x_counter >= 4) {
		w_p_one = true;
	}
	else if (o_counter >= 4) {
		w_p_two = true;
	}
}
