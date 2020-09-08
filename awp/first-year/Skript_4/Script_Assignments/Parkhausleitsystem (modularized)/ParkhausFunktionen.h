#pragma once
#include <windows.h>

// Funktionsdeklarationen
void zeichne_parkhaus(void);
void einausfahrt(bool);
void schalte_pfeile(void);
void farbe(WORD color);
void setze_farbe(int, int);
void freies_parken(int, int, int);

bool etagen_eingabe_pruefen(int);
bool box_eingabe_pruefen(int);

int suche_freie_etage(void);
int suche_freien_parkplatz(int);

// globale Variablen
extern bool ab_parkhaus[3][10];
extern int parkzeit[3][10];
extern char pfeil_anzeige[3][11];
