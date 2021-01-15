chord(0, 2, 4, a).
chord(1, 3, 5, b).
chord(2, 4, 6, c).
chord(3, 5, 0, d).
chord(4, 6, 1, e).
chord(5, 0, 2, f).
chord(6, 1, 3, g).

match(A, X) :- chord(X,Y,Z,A).
match(A, Y) :- chord(X,Y,Z,A).
match(A, Z) :- chord(X,Y,Z,A).

melody([A], [X]) :- match(A,X).

melody([H1|L], [H2|M]) :- match(H1,H2), melody(L,M).

