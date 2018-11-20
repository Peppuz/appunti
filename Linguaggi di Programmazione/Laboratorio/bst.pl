%%%% -*- Mode: Prolog -*-

%%%% bst.pl
% libreria per implementare un albero binario di ricerca

is_node(node(_Key, _Value, _Left, _Right)).

is_leaf(node(_, _, void, void)).

is_tree(tree(_Name, Root)) :-
       is_node(Root).
is_tree(tree(_Name, void)).

is_empty(tree(_, void)).

new_tree(Name) :-
    atomic(Name),
    assert(tree(Name, void)).

delete_tree(Name) :-
    retractall().

delete_node() :-

print_tree() :-

min_tree() :-

max_tree() :-

tree_insert(K, V, Name, tree(Name, NewRoot)) :-
    tree(Name, Root),
    node_insert(K, V, Root, NewRoot),
    !,
    retract(tree(Name, Root),
    asert(tree(Name, NewRoot)).

node_insert(K, V, void, node(K, V, void, void)).
node_insert(K, V, node(NK, NV, L, R), node(NK, NV, RL, RR)) :-
    compare('<', K, NK),
    node_insert(K, V, L, RL),
    RR = R.

node_insert(K, V, node(NK, NV, _L, R), node(NK, NV, RL, RR)) :-
    compare('>', K, NK),
    RL = R,
    node_insert(K, V, R, RR).

node_insert(K, V, node(NK, _NV, L, R), node(NK, V, L, R)) :-
    compare('=', K, NK).

tree_search(K, tree(_Name, Root), V) :-
    node_search(K, Root, V).

node_search(K, node(NK, _NV, L, _R), V) :-
    compare('<', K, NK),
    node_search(K, L, V).

node_search(K, node(NK, _NV, _L, R), V) :-
    compare('>', K, NK),
    node_search(K, R, V).

node_search(K, node(NK, NV, _L, _R), V) :-
    compare('=', K, NK),
    V = NV.

:- delete_tree(movies).
:- new_tree(movies).
:- tree_insert(1980, "The Blues Brothers", movies, _).
:- tree_insert(2016, "Soldado", movies, _).
:- tree_insert(1994, "Pulp Fiction", movies, _).
:- tree_insert(2018, "Ready Player One", movies, _).
:- tree_insert(2000, "Gladiator", movies, _).
:- tree_insert(1996, "Memento", movies, _).



