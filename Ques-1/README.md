# Question

Write a program to implement **syntax**, **basic list manipulation functions**, and **numeric functions** in Prolog.

# Explanation

This program is divided into three parts:

1. **Syntax Demo**

   * Shows how to declare **facts** and **rules** in a knowledge base.
   * Example: defining `male/1`, `female/1`, `parent/2`, and rules like `father/2`, `mother/2`, `sibling/2`, and `ancestor/2`.

2. **Basic List Manipulation Functions**

   * Implements custom versions of common list operations such as:

     * Membership (`my_member/2`)
     * Append (`my_append/3`)
     * Length (`my_length/2`)
     * Last element (`my_last/2`)
     * Reverse (`my_reverse/2`)
     * Nth element (`my_nth0/3`)
     * Sum of list (`my_sumlist/2`)
     * Maximum element (`my_maxlist/2`)
     * Mapping function (`map_plus1/2`)

3. **Numeric Functions**

   * Demonstrates Prolog’s ability to compute values with recursion:

     * Even/Odd check (`even/1`, `odd/1`)
     * Factorial (`fact/2`)
     * Fibonacci (`fib/2`)
     * Greatest Common Divisor (`gcd/3`)
     * Power (`power/3`)
     * Prime number check (`is_prime/1`)

# Example Queries

```prolog
% ---------- SYNTAX DEMO ----------
?- father(rahul, amit).
true.

?- mother(seema, anita).
true.

?- sibling(amit, anita).
true.

?- ancestor(rahul, anita).
true.


% ---------- LIST MANIPULATION ----------
?- my_member(3, [1,2,3,4]).
true.

?- my_append([1,2], [3,4], R).
R = [1, 2, 3, 4].

?- my_length([a,b,c,d], N).
N = 4.

?- my_last([1,2,3,4], X).
X = 4.

?- my_reverse([1,2,3], R).
R = [3,2,1].

?- my_nth0(2, [10,20,30,40], X).
X = 30.

?- my_sumlist([1,2,3,4], S).
S = 10.

?- my_maxlist([10,25,17,9], M).
M = 25.

?- map_plus1([1,2,3], R).
R = [2,3,4].


% ---------- NUMERIC FUNCTIONS ----------
?- even(10).
true.

?- odd(7).
true.

?- fact(5, F).
F = 120.

?- fib(6, F).
F = 8.

?- gcd(48, 18, G).
G = 6.

?- power(2, 5, P).
P = 32.

?- is_prime(17).
true.

?- is_prime(18).
false.
```

# Notes

* The program demonstrates **knowledge base rules**, **list processing**, and **recursive arithmetic**.
* Each function is implemented manually to show the underlying Prolog logic rather than relying on built-in predicates.
* Example queries illustrate how to use each part of the program interactively in Prolog.
