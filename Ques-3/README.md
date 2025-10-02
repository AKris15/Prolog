# Question

Write a program to implement **local variables** and **conditional statements** in Prolog.

# Explanation

This program demonstrates how Prolog can handle conditional logic using the `if-then-else` construct `(Condition -> Then ; Else)`.
We also show how to use **local variables** to hold intermediate results such as classification outcomes.

# Predicates Implemented

1. **check_number(Number)**

   * Checks whether a number is **Positive**, **Negative**, or **Zero**.
   * Uses local variable `Result` to store the classification.

2. **classify_marks(Marks)**

   * Classifies exam marks into grades: **A, B, C, or Fail**.
   * Demonstrates multiple conditional branches.

# Example Usage

```prolog
?- check_number(10).
The number 10 is Positive.

?- check_number(-3).
The number -3 is Negative.

?- check_number(0).
The number 0 is Zero.

?- classify_marks(95).
Marks: 95, Grade: A

?- classify_marks(67).
Marks: 67, Grade: C

?- classify_marks(40).
Marks: 40, Grade: Fail
```

# Notes

* `Result` and `Grade` are **local variables** inside each predicate.
* The `( -> ; )` construct is Prolog’s way to implement **if-then-else** conditions.
* `format/2` is used for nicely formatted output.

