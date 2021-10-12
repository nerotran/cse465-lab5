% Find the kth element of a list


% TODO: Find the kth element of a list
kth_element([H|_], 0, H).
kth_element([_|T], K, E) :- K>0, K1 is K-1, kth_element(T, K1, E).

% TESTS 

:- kth_element([a, b, c, d], 0, X), display(X), nl. 
:- kth_element([a, b, c, d], 3, X), display(X), nl. 
:- kth_element([a], 0, X), display(X), nl. 

