happy(vincent).

listens2Music(butch).

playsAirGuitar(vincent):-
	listens2Music(vincent),
	happy(vincent).

playsAirGuitar(butch):-
	happy(butch);
	listens2Music(butch).
