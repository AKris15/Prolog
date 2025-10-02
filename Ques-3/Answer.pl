/*----------------------------------------------------------
   Program: Demonstrating Local Variables and Conditional Statements
   This program shows how to use local variables and if-then-else
   logic in Prolog using ( -> ; ) constructs.
-----------------------------------------------------------*/

% Predicate to check if a number is positive, negative, or zero
check_number(Number) :-
    (   Number > 0 ->             % If Number is greater than 0
        Result = 'Positive'       % assign 'Positive' to Result
    ;   Number < 0 ->             % Else if Number is less than 0
        Result = 'Negative'       % assign 'Negative' to Result
    ;   Result = 'Zero'           % Else (when equal to 0), assign 'Zero'
    ),
    % Print the result in a readable format
    format('The number ~w is ~w.~n', [Number, Result]).


% Predicate to classify marks into grades
classify_marks(Marks) :-
    (   Marks >= 90 ->            % If marks >= 90
        Grade = 'A'
    ;   Marks >= 75 ->            % Else if marks >= 75
        Grade = 'B'
    ;   Marks >= 50 ->            % Else if marks >= 50
        Grade = 'C'
    ;   Grade = 'Fail'            % Else, it's a fail
    ),
    % Print marks and the assigned grade
    format('Marks: ~w, Grade: ~w~n', [Marks, Grade]).
