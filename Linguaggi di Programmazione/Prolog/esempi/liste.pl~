%%%% -*- Mode:Prolog -*-

%%%% Libreria per gestire le liste
%%%% e le sue operazioni elementari.

%Definizione di Lista
lists([]).
lists([X| Xs]) :-
          lists(Xs).

%Operazione lengthList/2 per calcolare
%la lunghezza di una lista.
lengthList([], 0).
lengthList([X | Xs], R) :-
    lists([X | Xs]),
    lengthList(Xs, M),
    R is M+1.

%predicato is_empty/1 per stabilire se una lista è vuota
is_empty([]).

%Predicato member/2 per stabilire se un elemento appartine o meno alla lista
member(X, [X | Xs]).
member(X, [Y | Ys]) :- member(X, Ys).

%Predicato appendList/3 per effettuare la concatenazione di due liste
appendList([], X, X).
appendList([X | Xs], Y, [X | Z]):-
    appendList(Xs, Y, Z).

%Predicato nth/3 per ottenere l'elemento n-esimo
nth(0, X, X).
nth(N, [_| X], X) :-
    N1 is N-1,
    nth(N1, X, X).

%Predicato insert/3 per inserire un elemento in una lista
insert(X, [], X).
insert(X, Y, [X | Y]).

%predicato delete/3 per eliminare un elemento di una lista
delete(X, X, []).
delete(X, [X | Xs], Xs).

%predicato search/2 per ricercare un elemento di una lista
search(X, X).
search(X, [Y | Ys]) :-
    search(X, Ys).

%predicato min/2 per calcolare il minimo degli elementi di una lista
min(X, X).
min([X | Xs], X) :-
    min(Xs, Z),
    X < Z.
min([X | Xs], Z):-
    min(Xs, Z),
    Z < X.

%predicato max/2 per calcolare il massimo degli elementi di una lista
max(X, X).
max([X | Xs], X) :-
    max(Xs, Z),
    X > Z.
max([X | Xs], Z) :-
    max(Xs, Z),
    Z > X.
%% end of file lists.pl
