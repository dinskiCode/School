/*
Achtung: Die dritte Variante ist noch nicht fertig (wird vllt. noch irgendwann ergänzt)
Auf Linux geschrieben, ein paar Sachen müssen auf Windows evtl. umgeändert werden. 
*/


#include <iostream>
#include <math.h>
//#include <conio.h>
#include <iomanip>
using namespace std;

// Prototypen
int menue();
float berechneEndbetrag(float, float, int);//Zins berechnen
void berechneEndbetrag_jaehrlich(float fanf, float fzins, int ilz);
float eingabeBetrag();
void tilgungsPlan(float fKreditsumme, float fzins, int ilz);

int main() // was void main()
{
	//Variablen definieren
	//------------------------------------------
	float fKapital = 0, fEndkapital = 0, fZinssatz = 0;
	int iLaufzeit, iAuswahl;
    
    // Variablen fuer den Tilgungsplan
    float fKreditsumme = 0;


	char cEingabe;
	//------------------------------------------
    //locale::global(locale("German_germany"));
	cout << setprecision(2) << fixed;
	do //Schleifenbeginn
	{
		system("clear"); //Bildschirm leeren
		iAuswahl = menue();
		switch (iAuswahl) //Mehrfachauswahl -- 1-2
		{
		case 1: //Endkapital berechnen
		{
			//------------------------------------------
			cout << '\n' << "Sparplan (Zinsen) berechnen" << endl;
			cout << '\n' << "Bitte geben Sie das Startkapital ein: ";
			fKapital = eingabeBetrag();
			cout << "Bitte geben Sie den Zinssatz in % ein: ";
			fZinssatz = eingabeBetrag();;
			cout << "Bitte geben Sie die Laufzeit in Jahren ein:";
			iLaufzeit = eingabeBetrag();
			cout << endl;

			//Funktion zur Berechnung des Endkapitals aufrufen
            fEndkapital = berechneEndbetrag(fKapital, fZinssatz, iLaufzeit);

			//Ausgabe des Endkapitals
			cout << "Nach " << iLaufzeit << " Jahren:\t" << fEndkapital << endl << endl;
			break;
			//------------------------------------------
		}
		case 2: //J�hrliche Endkapitalausgabe
		{
			//------------------------------------------
			cout << '\n' << "Sparplan (Zinsen) mit j�hrlicher Ausgabe" << endl;
			cout << '\n' << "Bitte geben Sie das Startkapital ein: ";
			fKapital = eingabeBetrag();
			cout << "Bitte geben Sie den Zinssatz in % ein: ";
			fZinssatz = eingabeBetrag();;
			cout << "Bitte geben Sie die Laufzeit in Jahren ein:";
			iLaufzeit = eingabeBetrag();
			cout << endl;

			//F�r jedes Jahr...  Funktion aufrufen
            berechneEndbetrag_jaehrlich(fKapital, fZinssatz, iLaufzeit);

			cout << endl;
			break;
			//------------------------------------------
		}
        case 3: //Tilgungsplan
        {
            cout << "Bitte geben Sie die Kreditsumme in Euro ein: ";        
            fKreditsumme = eingabeBetrag();
            
            cout << "Bitte geben Sie den Zinssatz in % ein: ";
            fZinssatz = eingabeBetrag();

            cout << "Bitte geben Sie die Laufzeit in Jahren ein: ";
            iLaufzeit = eingabeBetrag();
            cout << endl;

           tilgungsPlan(fKreditsumme, fZinssatz, iLaufzeit);
           cout << endl;
           break;
        }
		default: //Keine brauchbare Eingabe
		{
			cout << "Dieser Menuepunkt ist nicht vorhanden." << endl;
			break;
		}
		}
		cout << endl << "Wollen Sie nochmal? (J/N) ";
		cin >> cEingabe;
	} while (cEingabe == 'j' || cEingabe == 'J');
}


int menue()
{
    int ieingabe = 0;
	cout << "Bitte Menuepunkt auswaehlen \n\n";
    cout << "<1> Sparplan berechnen\n<2> Sparplan mit jaehrlicher Ausgabe\n<3> Tilgungsplan" << endl;
    cout << "Ihre Wahl: ";
    cin >> ieingabe;
    return ieingabe;
}

float berechneEndbetrag(float fanf, float fzins, int ilz)
{
    float fEnd = 0;
    fEnd = fanf * pow((1 + (fzins/100)), ilz);
    return fEnd;
}

void berechneEndbetrag_jaehrlich(float fanf, float fzins, int ilz)
{
	float fend;
    fend = fanf;
    for (int i = 1; i <= ilz; i++) {
        fanf += fanf * (fzins/100);
        cout << "Nach dem " << i << ". Jahr:\t" << fanf << endl;
    } 
}

float eingabeBetrag()
{
	float fBetrag;
    cin >> fBetrag;
    return fBetrag;
}

void tilgungsPlan(float fKreditsumme, float fzins, int ilz) {
    float q = 0, fTilgungsAnteil = 0, fZinsanteil = 0;

    fzins = fzins/100;
    fZinsanteil = fzins * fKreditsumme;
    q = fzins + 1.0;

    // Berechnung der jaehrlichen Annuitaet
    fTilgungsAnteil = fKreditsumme* ((q-1)/(pow(q,ilz)-1)) *pow(q,0);

    cout << fZinsanteil << "   "<< fTilgungsAnteil;
    cout << "Jaehrliche Annuitaet: " << fZinsanteil + fTilgungsAnteil;
}
