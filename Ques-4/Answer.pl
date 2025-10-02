/*----------------------------------------------------------
   Program: Factorial of a Given Number
   This program calculates the factorial of a number.
   It demonstrates recursion, user input, and formatted output.
-----------------------------------------------------------*/

% Predicate to calculate the factorial of a number
factorial(0, 1). % Base case: factorial of 0 is 1
factorial(N, F) :-
    N > 0,
    N1 is N - 1,              % Decrement N
    factorial(N1, F1),        % Recursive call
    F is N * F1.              % Multiply N by factorial of (N-1)

% Predicate to ask the user for a number and calculate its factorial
calculate_factorial :-
    write('Please enter a number to calculate its factorial: '), % Prompt
    flush_output,                         % Ensure the prompt is displayed
    read_line_to_string(user_input, NumberString), % Read user input as string
    atom_number(NumberString, Number),    % Convert string to number
    factorial(Number, Result),            % Calculate factorial
    format('The factorial of ~w is ~w.~n', [Number, Result]). % Display result

% Wrapper so you can run ?- factorial.
factorial :- calculate_factorial.
