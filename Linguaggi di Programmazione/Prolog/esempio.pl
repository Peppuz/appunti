%%%% -*- Mode: Prolog -*-

mininum(X, Y, X) :- X =< Y, !.
mininum(X, Y, Y).
