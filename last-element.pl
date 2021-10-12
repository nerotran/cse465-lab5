% Find the last element of a list



% TODO: Implement my_last/2
my_last([X], X).
my_last([_|T], X) :- my_last(T, X).

% Tests
:- my_last([a, b, c, d], X), display(X), nl. 
:- my_last([a], X), display(X), nl. 

