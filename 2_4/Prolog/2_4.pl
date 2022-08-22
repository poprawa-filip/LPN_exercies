%	Learn Prolog Now! Exercise 2.4
%	Variables for the crossword were assigned horizontally, out of pure convenience.

word(astante,  a,s,t,a,n,t,e).
word(astoria,  a,s,t,o,r,i,a).
word(baratto,  b,a,r,a,t,t,o).
word(cobalto,  c,o,b,a,l,t,o).
word(pistola,  p,i,s,t,o,l,a).
word(statale,  s,t,a,t,a,l,e).

crossword(V1, V2, V3, H1, H2, H3) :-
	word(H1, _, A, _, B, _, C, _),
	word(H2, _, D, _, E, _, F, _),
	word(H3, _, G, _, H, _, I, _),
	word(V1, _, A, _, D, _, G, _),
	word(V2, _, B, _, E, _, H, _),
	word(V3, _, C, _, F, _, I, _),
	
%	I assumed that words shouldn't dupliace in the crossword, hence this chunk of code
%	to prevent variables from sharing the same value.
	
	V1 \= V2, V1 \= V3, V1 \= H1, V1 \= H2, V1 \= H3,
	V2 \= V3, V2 \= H1, V2 \= H2, V2 \= H3,
	V3 \= H1, V3 \= H2, V3 \= H3,
	H1 \= H2, H1 \= H3,
	H2 \= H3.
	
	
	