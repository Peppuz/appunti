%%%% -*- Mode: Prolog -*-

%%%% complex.pl
% Libreria minimali per definire e manipolare i numeri complessi

% definizione di un numero complesso
is_complex(c(R, I)) :-
   number(R), %predicato della libreria standard di Prolog
   number(I).


complex_add(c(R1, I1), c(R2, I2), c(RR, IR)) :-
    is_complex(c(R1, I1)),
    is_complex(c(R2, I2)),
    RR is R1 + R2,
    IR is I1 + I2.

% predicato complex_add/3 per effettuare
%la somma tra un numero complesso  e un numero reale.
complex_add(c(R1, I), N, c(RR,  IR)) :-
       is_complex(c(R1, I)),
       number(N),
       complex_add(c(R1, I), c(N, 0), c(RR, IR)).

complex_add(N1, N2, CR) :-
    number(N1),
    number(N2),
    complex_add(c(N1, 0), c(N2, 0), CR).

% Predicato complex_mult/3 per effettuare
% il prodotto di due numeri complessi.
complex_mult(N, c(R, I), c(RR, IR)) :-
    number(N).
%%%% end of file -- complex.pl
