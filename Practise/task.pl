parent(bob,ann).
parent(marry,ann).
parent(john,bob).
male(bob).
male(john).
female(marry).
female(ann).

grandparent(X,Y):-parent(X,T),parent(T,Y).


