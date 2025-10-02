# Question 2

### Task

Write a Prolog program to implement **input, output, and predicates**.

### Program Explanation

The program asks the user for their name (input), then greets them (output) using a simple predicate `greet_user/0`.

### Example Usage

```prolog
?- greet_user.
Please enter your name: AK
Hello, AK! Welcome to Prolog.
```

### Notes

* `write/1` is used to display text to the user.
* `read_line_to_string/2` reads a line of input as a string.
* `format/2` is used for formatted output.

This demonstrates how Prolog can handle basic **interaction with the user** while using predicates.

