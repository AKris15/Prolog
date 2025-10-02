/*------------------------------------------------ PART 1 : SYNTAX DEMO ---------------------------------------------*/

/* Facts (simple knowledge base) */
male(rahul).
male(amit).
female(seema).
female(anita).

parent(rahul, amit).    % rahul is parent of amit
parent(seema, amit).
parent(rahul, anita).
parent(seema, anita).

likes(amit, chess).
likes(anita, music).

/* Rules (if-then definitions) */
father(F, C) :- male(F), parent(F, C).
mother(M, C) :- female(M), parent(M, C).

sibling(X, Y) :-
    parent(P, X), parent(P, Y),
    X \= Y.

ancestor(A, D) :- parent(A, D).
ancestor(A, D) :- parent(A, X), ancestor(A, X).

/*------------------------------------------------ PART 2 : Basic LIST Manipulation --------------------------------------- */

my_member(X, [X|_]).
my_member(X, [_|T]) :- my_member(X, T).

my_append([], B, B).
my_append([H|T], B, [H|R]) :- my_append(T, B, R).

my_length([], 0).
my_length([_|T], N) :- my_length(T, N1), N is N1 + 1.

my_last([X], X).
my_last([_|T], X) :- my_last(T, X).

my_reverse(L, R) :- my_rev_acc(L, [], R).
my_rev_acc([], Acc, Acc).
my_rev_acc([H|T], Acc, R) :- my_rev_acc(T, [H|Acc], R).

my_nth0(0, [H|_], H).
my_nth0(N, [_|T], X) :-
    N > 0,
    N1 is N - 1,
    my_nth0(N1, T, X).

my_sumlist([], 0).
my_sumlist([H|T], S) :-
    my_sumlist(T, S1),
    S is H + S1.

my_maxlist([X], X).
my_maxlist([H|T], M) :-
    my_maxlist(T, M1),
    ( H >= M1 -> M = H ; M = M1 ).

map_plus1([], []).
map_plus1([H|T], [H1|R]) :-
    H1 is H + 1,
    map_plus1(T, R).

/* ------------------------------ PART 3: Numeric Functions ------------------------------ */

even(N) :- integer(N), 0 is N mod 2.
odd(N)  :- integer(N), 1 is N mod 2.

fact(0, 1).
fact(N, F) :-
    integer(N), N > 0,
    N1 is N - 1,
    fact(N1, F1),
    F is N * F1.

fib(0, 0).
fib(1, 1).
fib(N, F) :-
    integer(N), N >= 2,
    N1 is N - 1, N2 is N - 2,
    fib(N1, F1), fib(N2, F2),
    F is F1 + F2.

gcd(A, 0, A) :- A >= 0.
gcd(A, B, G) :-
    B > 0,
    R is A mod B,
    gcd(B, R, G).

power(_, 0, 1).
power(B, E, P) :-
    integer(E), E > 0,
    E1 is E - 1,
    power(B, E1, P1),
    P is B * P1.

is_prime(2).
is_prime(N) :-
    integer(N), N > 2,
    \+ has_factor(N, 2).

has_factor(N, F) :-
    F * F =< N,
    ( 0 is N mod F
    ; F1 is F + 1, has_factor(N, F1)
    ).
