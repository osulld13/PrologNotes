Lists

   [mia,  vincent,  jules,  yolanda] 
    
   [mia,  robber(honey_bunny),  X,  2,  mia] 
    
   [] 
    
   [mia,  [vincent,  jules],  [butch,  girlfriend(butch)]] 
    
   [[],  dead(z),  [2,  [b,  c]],  [],  Z,  [2,  [b,  c]]]

Lists can contain all sorts of prolog objects

The head of a list is the first element of a list.
The tail of the list is everything except the head.

The '|' operator in prolog can be used to seperate a tail into its
head and its tail.

	?- [Head|Tail] = [mia, vincent, jules, yolanda]

	Head = mia
	Tail = [vincent, jules, yolanda]
	yes

'|' can be used to take multiple items from the start of the list
	
	?-  [X,Y  |  W]  =  [[],  dead(z),  [2,  [b,  c]],  [],  Z]. 
    
   	X  =  [] 
   	Y  =  dead(z) 
   	W  =  [[2,[b,c]],[],_8327] 
   	Z  =  _8327 
   	yes

Member - A prolog program that tells us whether an element is in a
list

	member(X, [X|T]).
	member(X, [H|T]) :- member(X, T).

Compare

	compare([], [])
	compare([Head|Tail], [Head|Tail]) :- compare[Tail, Tail]