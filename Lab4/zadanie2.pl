pisz_liste(L) :-
    L = [H|T],
    write(H),
    nl,
    pisz_liste(T).

pisz_liste(_) :-
    write("koniec").
