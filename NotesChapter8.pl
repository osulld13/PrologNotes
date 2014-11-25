% More Definite clause grammars

% Extra Arguments

	/*s 				--> 	np(subject),vp.

	np(_) 			--> 	det,n.
	np(X) 			--> 	pro(X).

	vp 				--> 	v,np(object).
	vp 				--> 	v.

	det 			--> 	[the].
	det 			--> 	[a].

	n 				--> 	[woman].
	n 				--> 	[man].

	pro(subject) 	--> 	[he].
	pro(subject) 	--> 	[she].
	pro(object) 	--> 	[him].
	pro(object) 	--> 	[her].

	v 				--> 	[shoots].*/

% Here weve added pronouns to state which pronouns can occur in the subject position
% and which ones can occur in the object position.

% Building Parse Trees

	s(s(NP,VP)) 	--> 	np(NP),vp(VP).

    np(np(DET,N)) 	--> 	det(DET),n(N).

    vp(vp(V,NP)) 	--> 	v(V),np(NP).
	vp(vp(V))		--> 	v(V).

	det(det(the)) 	--> 	[the].
	det(det(a))		--> 	[a].

	n(n(woman)) 	--> 	[woman].
	n(n(man))		--> 	[man].

	v(v(shoots)) 	--> 	[shoots].

% Extra Goals
% add up how many as, bs, and cs have already been generated

	s --> ablock(Count),bblock(Count),cblock(Count).
	
	ablock(0) --> [].
	ablock(NewCount) --> [a],ablock (Count), {NewCount is Count + 1}.

	bblock(0) --> [].
	bblock(NewCount) --> [b],bblock (Count), {NewCount is Count + 1}.
	
	cblock(0) --> [].
	cblock(NewCount) --> [c],cblock (Count), {NewCount is Count + 1}.

	% When prolog encounters curly parens inside a dcg it takes the extra goals inside
	% the parens into the translation.

% Lexicon

	% Lexical entries encoded using the predicate lex/2
	% recording enries about various words seperately

	lex(the, det).
	lex(a, det).
	lex(woman, n).
	lex(man, n).
	lex(shoots, v).

	det --> [Word],{lex(Word,det)}.
	n --> [Word],{lex(Word,n)}.
	v --> [Word],{lex(Word,v)}.

	
	