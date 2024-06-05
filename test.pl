

male(sualeh).
male(asad).
male(sohail).
female(mahruk).
female(sonia).
female(samina).

parent(sohail, sualeh).
parent(sohail, sonia).
parent(asad, naveed).
parent(shariyar, elsa).
parent(noman, mahruk).
parent(samina, sualeh).

age(sualeh, 20).
age(sonia, 24).
age(elsa, 30).

father(X,Y) :- parent(X,Y), male(X).
mother(X,Y) :- parent(X,Y), female(Y).
sibling(X,Y):- parent(Z,X), parent(Z,Y), X\=Y.
young(X,A):- age(X,A) , A=<20, write('you are young'),nl.
young(X,A):- age(X,A) , A>=20, nl, write('you are adult'),nl.







% main :- write('Hello Syaleh').