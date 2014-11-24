% More Lists

	append([],L,L).
	append([H|T],L2,[H|L3]) :- append(T,L2,L3).

% Reversing a List

	accumReverse([], L, L).
	accumReverse([H|T], List2, Rev):- accumReverse(T, [H|List2], Rev).
	
	rever(List1, List2) :- accumReverse(List1, [], List2).
