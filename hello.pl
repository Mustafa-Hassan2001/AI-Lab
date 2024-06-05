main :- write('This is sample Prolog program'),
write(' This program is written into hello_world.pl file').

male(asad).
male(mustafa).
male(ali).
female(saba).
female(sonia).

parent(ali, mustafa).
parent(ali, saba).
parent(asad, sonia).
parent(ali, asad).

age(ali,38).
age(asad,20).


siblings(X,Y):- parent(Z,X) , parent(Z, Y), X\=Y.
grandParents(X,Y) :- parent(Z,Y), parent(X,Z).
father(X,Y):- parent(X,Y), male(X).
isfather(X):- parent(X,_).
hasChild(X):- parent(X, _).

young(X,Y):- age(X,Y), Y=<20.


uptoTen(10):-write(10),nl.

uptoTen(X):-
 write(X),nl,
 Y is X+1,
 uptoTen(Y).

count_down(L, H) :-
   between(L, H, Y),
   Z is H - Y,
   write(Z), nl.