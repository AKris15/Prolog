/*----------------------------------------------------------
   Program: 4-Queens Problem in Prolog
   The goal is to place 4 queens on a 4x4 chessboard such that
   none of them attack each other (no two queens on the same row,
   column, or diagonal).
-----------------------------------------------------------*/

% Entry point: solve the 4-Queen problem and print all solutions
solve_queens :-
    queens(4, Solution),           % generate one valid solution for N=4
    write('Solution: '), write(Solution), nl,
    fail.                          % force backtracking to print all solutions
solve_queens.                      % succeeds after all solutions are printed

/* General N-Queens solver pipeline:
   1) Build the domain of rows [1..N].
   2) Choose a permutation as a candidate placement (1 queen per column).
   3) Check diagonal safety.
*/
queens(N, Solution) :-
    range(1, N, Rows),             % Rows = [1,2,...,N]
    permutation(Rows, Solution),   % try a row assignment (1 queen per column)
    safe(Solution).                % ensure no diagonal attacks

/* range(Min, Max, List):
   Build the inclusive list [Min, Min+1, ..., Max].
*/
range(Min, Max, [Min|Rest]) :-
    Min =< Max,
    Next is Min + 1,
    range(Next, Max, Rest).
range(Min, Max, []) :-
    Min > Max.

/* safe(Queens):
   Check that the list of queens has no diagonal conflicts.
   We check the head queen against the rest with increasing column distance.
*/
safe([]).
safe([Queen|Others]) :-
    safe(Others),                  % first ensure tail is safe
    no_attack(Queen, Others, 1).   % then check head vs. tail diagonally

/* no_attack(Y, Ylist, Dist):
   Ensure queen at row Y does not attack any queen in Ylist along diagonals.
   Dist = horizontal distance (difference in columns) from the current queen.
   Diagonal conflict condition for rows Y and Y1 at column distance d:
     |Y - Y1| = d
   Encoded as:
     Y \= Y1 + d  and  Y \= Y1 - d
*/
no_attack(_, [], _).               % no more queens to compare → safe
no_attack(Y, [Y1|Ylist], Dist) :-
    Y =\= Y1 + Dist,               % not on "descending" diagonal
    Y =\= Y1 - Dist,               % not on "ascending" diagonal
    Dist1 is Dist + 1,             % increase column distance
    no_attack(Y, Ylist, Dist1).    % check against the rest
