%%%% -* mode:Prolog -*-

colleague(X, Y):-
    worksFor(X, Z),
    worksFor(Y, Z),
    X \= Y. %Utilizzato per dire che X != Y

worksFor(ugo, ibm).
worksFor(gino, ibm).
worksFor(enrica, samsung).
worksFor(salvo, olivetti).
worksFor(ciro, samsung).

worksForAnEvilCompany(X, Y) :- worksFor(X, trenord).

:- colleague(X, Y).

    
