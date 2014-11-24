Arithmetic

Arithmetic examples	Prolog Notation
6 + 2 = 8		8  is  6+2.
6 ∗ 2 = 12		12  is  6*2.
6 − 2 = 4		4  is  6-2.
6 − 8 = − 2		-2  is  6-8.
6 Ã· 2 = 3		3  is  6/2.
7 Ã· 2 = 3		3  is  7/2.
1 is the remainder when 7 is divided by 2	1  is  mod(7,2).

   ?-  8  is  6+2. 
   yes 
    
   ?-  12  is  6*2. 
   yes 
    

Variables can be useful here

   ?-  X  is  6+2. 
    
   X  =  8 
    
   ?-  X  is  6*2. 
    
   X  =  12 

Arithmetic operators can be used to define predicates

   add_3_and_double(X,Y)  :-  Y  is  (X+3)*2.


Using Arithmetic With Lists

Length of a List

  len([], 0)
  len([_|T], N) :- len(T, X) , N is X + 1

Using Accumultors in Prolog

  %accLen(List, Acc, Length)

  accLen([], A, A).
  accLen([_|T], A, L) :- NewA isA + 1, accLen(T, NewA, L).

  leng(List, Length) :- accLen(List, 0, Length).

Integer Comparison

  X < Y.
  X =< Y.
  X =:= Y.
  X =\= Y.
  X >= Y.
  X > Y.

These operators force their right hand side to be evaluated

  2 < 4+1.
  yes

('=' vs '=:=') '='checks for unification, the same expression. While '=:='
checks for arithmetic equality.

Max Function

  accMax([], Acc, Acc).

  accMax([H|T], Acc, Max):-
        H < Acc,
        accMax(T, Acc, Max).

  accMax([H|T], Acc, Max) :-
	H > Acc,
	accMax(T, H, Max).

   % max(List) :- accMax(List, 0, Max)

   % The head of the list should be used for our inital value as 
   % the list may be of negative as a result max is -

   max(List, Max) :-
	List = [H_],
 	accMax(List, H, Max).  

  increment(X, Y):- 
	Y =:= X + 1.
