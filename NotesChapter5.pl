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
