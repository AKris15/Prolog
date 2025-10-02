# Question

Write a program to calculate the **factorial of a given number** in Prolog.

# Explanation

This program implements the factorial function using **recursion** and also provides a user-interactive predicate to read input and display the result.

* **factorial(N, F)**
  Calculates the factorial of `N` recursively and unifies the result with `F`.

* **calculate_factorial/0**
  Prompts the user for input, converts it into a number, computes the factorial, and prints the result.

* **factorial/0**
  A wrapper that allows running the program interactively without arguments.

# Example Queries

```prolog
?- factorial(5, F).
F = 120.

?- factorial(0, F).
F = 1.

?- factorial.
Please enter a number to calculate its factorial: 6
The factorial of 6 is 720.
```

# Notes

* The factorial is defined as:

  * `0! = 1` (base case)
  * `N! = N × (N-1)!` for `N > 0`
* Recursion is used to repeatedly call `factorial/2`.
* `format/2` is used for clean output formatting.
* `read_line_to_string/2` and `atom_number/2` handle user input safely.

