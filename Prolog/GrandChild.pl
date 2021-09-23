parent('Hasib','Rakib').
parent('Rakib','Sohel').
parent('Rakib','Rebeka').
parent('Rashid','Hasib').

grandchild(Z ,X):-
    parent(Y, X), parent(Z, Y).


findGp:-
    write('Grandchild: '), read(Gp), write('Grandparent: '),
    grandchild(X, Gp), write(X), tab(5), fail.
findGp.
