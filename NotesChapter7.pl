% Definite Clause Grammars

% A language generated by a grammar consists of all the string that
% the grammar classifies as grammatical.

% A context free recognizer tells us if a string belongs to the language
% generated by the context free grammar.

% A context free parser is a program which correctly decides whether a string
% belongs to the language generated by a context free grammar and tells us what
% its structure is.

% Context free languages are the languages that can be developed from context
% free grammars. 

% CFG Recognition Using Append

% Recognizers are defined in prolog by creating clauses that correspond to 
% grammar rules.

  % To Initially model recognizers we shal use lists to represent strings
    [a, woman, shoots, a, man]
  
  % (s -> np vp) Can be modelled as saying:
  % s is made out of np concatenated with vp
      
    s(Z) :- np(X), vp(Y), append(X, Y, Z).
    
% Given this the grammar
  % s   -> np vp
  % np  -> det n
  % vp  -> v np
  % vp  -> v
  % det -> a
  % det -> the
  % n -> woman
  % n -> man
  % v -> shoots

% The prolog corresponding is as follows
  
  s(Z)  :- np(X), vp(Y), append(X, Y, Z).
  np(Z) :- det(X), n(Y), append(X, Y, Z).
  vp(Z) :- v(X), np(Y), append(X, Y, Z).
  vp(Z) :- v(Z).

  det([a]).
  det([the]).

  n([woman]).
  n([man]).
  
  v([shoots]).

