rodzic(zofia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzys).
rodzic(krzys, mikolaj).

kobieta(zofia).
kobieta(kasia).
kobieta(ania).

mezczyzna(andrzej).
mezczyzna(marcin).
mezczyzna(krzys).
mezczyzna(mikolaj).

potomek(Potomek,Przodek):-
	rodzic(Przodek,Potomek).

matka(Matka,Dziecko):-
	rodzic(Matka,Dziecko),
	kobieta(Matka).

dziadkowie(Dziadek,Wnuk):-
	rodzic(Dziadek,Y),
	rodzic(Y,Wnuk).

siostra(Siostra,Rodzenstwo):-
	rodzic(Z,Siostra),
	rodzic(Z,Rodzenstwo),
	kobieta(Siostra).

szczesliwy(X):-
	rodzic(X,_).

dwoje_dzieci(X):-
	rodzic(X,Y),
	siostra(Y, _).

wnuk(X,Y):-
	rodzic(Y, Z),
	rodzic(Z, X).

ciotka(X, Y):-
	rodzic(Z, Y),
	siostra(X, Z).

nastepca(X, Y):-
	rodzic(Y, X).
nastepca(X, Y):-
	rodzic(Z, X),
	nastepca(Z, Y).
