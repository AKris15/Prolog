# Question

Write a program to solve the **4-Queen problem** using Prolog.

# Explanation

The 4-Queen problem asks us to place 4 queens on a 4×4 chessboard so that no two queens threaten each other. That means:

* No two queens share the same row.
* No two queens share the same column.
* No two queens share the same diagonal.

In this solution:

1. We generate a list of possible rows `[1..N]`.
2. We use a **permutation** of rows to assign each queen a unique row per column.
3. We check that no two queens are on the same diagonal using `safe/1` and `no_attack/3`.

# Predicates Implemented

* **solve_queens/0** → prints all valid solutions for N = 4.
* **queens(N, Solution)** → generates a valid solution for N queens.
* **range(Min, Max, List)** → builds a list of integers from Min to Max.
* **safe/1** → ensures a queen placement has no diagonal conflicts.
* **no_attack/3** → checks that a queen does not attack others diagonally.

# Example Queries

```prolog
?- solve_queens.
Solution: [2,4,1,3]
Solution: [3,1,4,2]
true.
```

Here, each solution is a list `[Q1, Q2, Q3, Q4]` where `Qi` is the row position of the queen in column `i`.

# Notes

* The program uses **backtracking** to explore all possible solutions.
* By changing `queens(4, Solution)` to `queens(N, Solution)`, the same code can solve the **N-Queens problem** for any board size.

