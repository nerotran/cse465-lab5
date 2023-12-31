% List basics in prolog

list([]). 
list(['I', did, did, 'I']). 
list([1, 2, 3, 4]). 

% TODO:
% Print out the length of each list using the prolog 'length' predicate
list_length([],0).
list_length([_|TAIL],L) :- list_length(TAIL,L1), L is L1 + 1.

problem1(L) :- (list_length(L,N), format(N)), nl. 
:- foreach(list(L), problem1(L)).

% TODO
% Check if each list has a 3 as a member. 
has3([H|T]) :- H = 3 ; has3(T).

problem2(L) :- (has3(L), format("True"); format("False")), nl. 
:-foreach(list(L), problem2(L)). 
	
% TODO 
% Append pairs of lists
my_append([],L,L).
my_append([H|T],L,[H|R]) :- my_append(T,L,R).

problem3(L1, L2) :- (my_append(L1,L2,L3), display(L3)), nl. 
:- foreach((list(L1), list(L2), L1 \= L2, \+ length(L1, 0), \+ length(L2, 0)), 
           problem3(L1, L2)).



% Print every permutation of [1, 2, 3, 4]
:- foreach(permutation([1, 2, 3, 4], P), (display(P), nl)).
