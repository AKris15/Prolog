/*------------------------------------------------ PART 1 : SYNTAX DEMO ---------------------------------------------*/

/* Facts: These are the base truths of our knowledge base. */
male(rahul).       % rahul is male
male(amit).        % amit is male
female(seema).     % seema is female
female(anita).     % anita is female

/* Parent-child relationships */
parent(rahul, amit).    % rahul is a parent of amit
parent(seema, amit).    % seema is a parent of amit
parent(rahul, anita).   % rahul is a parent of anita
parent(seema, anita).   % seema is a parent of anita

/* Likes relationship */
likes(amit, chess).     % amit likes chess
likes(anita, music).    % anita likes music

/* Rules: Derived relationships based on facts */
father(F, C) :- male(F), parent(F, C).      % F is father of C if F is male and F is a parent of C
mother(M, C) :- female(M), parent(M, C).    % M is mother of C if M is female and M is a parent of C

/* Siblings: Two people are siblings if they share a parent and are not the same person */
sibling(X, Y) :-
    parent(P, X), parent(P, Y),
    X \= Y.

/* Ancestor: Recursive rule
   - A is ancestor of D if A is parent of D
   - Or, A is parent of X and also ancestor of X */
ancestor(A, D) :- parent(A, D).
ancestor(A, D) :- parent(A, X), ancestor(A, X).

/*------------------------------------------------ PART 2 : Basic LIST Manipulation --------------------------------------- */

/* Check membership of an element in a list */
my_member(X, [X|_]).             % base case: X is the head
my_member(X, [_|T]) :- my_member(X, T).   % recursive case: check the tail

/* Append two lists */
my_append([], B, B).             % base case: empty + B = B
my_append([H|T], B, [H|R]) :-    % recursive: take head and append tail
    my_append(T, B, R).

/* Find length of a list */
my_length([], 0).                % empty list has length 0
my_length([_|T], N) :-           % ignore head, count tail
    my_length(T, N1),
    N is N1 + 1.

/* Find the last element of a list */
my_last([X], X).                 % single-element list, X is last
my_last([_|T], X) :- my_last(T, X).

/* Reverse a list using an accumulator */
my_reverse(L, R) :- my_rev_acc(L, [], R).  % wrapper
my_rev_acc([], Acc, Acc).                  % when input is empty, return accumulator
my_rev_acc([H|T], Acc, R) :-               % prepend head to accumulator, recurse on tail
    my_rev_acc(T, [H|Acc], R).

/* Get Nth element of list (0-based index) */
my_nth0(0, [H|_], H).            % if index = 0, head is the element
my_nth0(N, [_|T], X) :-          % otherwise, reduce index and check tail
    N > 0,
    N1 is N - 1,
    my_nth0(N1, T, X).

/* Sum all elements in a list */
my_sumlist([], 0).               % empty list sum = 0
my_sumlist([H|T], S) :-
    my_sumlist(T, S1),
    S is H + S1.

/* Find maximum element in a list */
my_maxlist([X], X).              % only one element, that's max
my_maxlist([H|T], M) :-          % compare head with max of tail
    my_maxlist(T, M1),
    ( H >= M1 -> M = H ; M = M1 ).

/* Map: Add 1 to each element in the list */
map_plus1([], []).
map_plus1([H|T], [H1|R]) :-
    H1 is H + 1,
    map_plus1(T, R).

/* ------------------------------ PART 3: Numeric Functions ------------------------------ */

/* Even and odd checks */
even(N) :- integer(N), 0 is N mod 2.   % N is even if remainder = 0
odd(N)  :- integer(N), 1 is N mod 2.   % N is odd if remainder = 1

/* Factorial */
fact(0, 1).                           % base case: 0! = 1
fact(N, F) :-
    integer(N), N > 0,
    N1 is N - 1,
    fact(N1, F1),
    F is N * F1.

/* Fibonacci sequence */
fib(0, 0).
fib(1, 1).
fib(N, F) :-
    integer(N), N >= 2,
    N1 is N - 1, N2 is N - 2,
    fib(N1, F1), fib(N2, F2),
    F is F1 + F2.

/* Greatest common divisor (Euclidean algorithm) */
gcd(A, 0, A) :- A >= 0.                % gcd(A,0) = A
gcd(A, B, G) :-
    B > 0,
    R is A mod B,
    gcd(B, R, G).

/* Power function: B^E */
power(_, 0, 1).                        % any number ^ 0 = 1
power(B, E, P) :-
    integer(E), E > 0,
    E1 is E - 1,
    power(B, E1, P1),
    P is B * P1.

/* Prime check */
is_prime(2).                           % 2 is prime
is_prime(N) :-
    integer(N), N > 2,
    \+ has_factor(N, 2).               % N has no divisor starting from 2

/* Helper: check if N has a factor F */
has_factor(N, F) :-
    F * F =< N,                        % only check factors <= sqrt(N)
    ( 0 is N mod F                     % case: F divides N
    ; F1 is F + 1, has_factor(N, F1)   % otherwise check next F
    ).
