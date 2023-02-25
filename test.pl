likes(john,mary).
likes(john,jane).
likes(bob,alice).
likes(bob,mary).
likes(charlie,jane).
likes(alice,bob).

loves(X,Y) :- likes(X,Y),likes(Y,X).

