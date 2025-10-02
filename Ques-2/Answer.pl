/*----------------------------------------------------------
   Simple Prolog Program: Input, Output, and Predicates
   This program asks for the user's name, then greets them.
-----------------------------------------------------------*/

% Main predicate to greet the user
greet_user :-
    write('Please enter your name: '),  % Prompt user
    flush_output,                       % Make sure prompt shows immediately
    read_line_to_string(user_input, Name), % Read input as a string (Name)
    nl,                                 % Print a new line
    format('Hello, ~w! Welcome to Prolog.~n', [Name]). % Print greeting


