% More Definite clause grammars

% Extra Arguments

	s --> np(subject),vp.

	np(_) --> det,n.
	np(X) --> pro(X).

	vp --> v,np(object).
	vp --> v.

	det --> [the].
	det --> [a].

	n --> [woman].
	n --> [man].

	pro(subject) --> [he].
	pro(subject) --> [she].
	pro(object) --> [him].
	pro(object) --> [her].

	v --> [shoots].

% Here weve added pronouns to state which pronouns can occur i the subject position
% and which ones can occur in the object position. 