parent('Hasib','Rakib').
parent('Hasib','Rabbi').
parent('Hasib','Luna').
parent('Hasib','Sakura').
parent('Rabbi','Sohel').

male('Hasib').
male('Rakib').
male('Rabbi').
male('Sohel').

female('Luna').
female('Sakura').


brother(X,Z):-
    parent(Y,X),parent(Y,Z),male(X),dif(X,Z).
findBr :- write('Person: '), read(X), write('brother: '),
    brother(Br, X), write(Br), tab(5), fail.
findBr.

sister(X,Z):-
    parent(Y,X),parent(Y,Z),female(X),dif(X,Z).
findSr :- write('Person: '), read(X), write('sister: '),
    sister(Sr, X), write(Sr), tab(5), fail.
findSr.

uncle(X,Y):-parent(Z,Y), brother(X,Z).
findUl :- write('Person: '), read(X), write('uncle: '),
    uncle(Ul,X), write(Ul), tab(5), fail.
findUl.

aunt(X,Y):-parent(Z,Y), sister(X,Z).
findUt :- write('Person: '), read(X), write('aunt: '),
    uncle(Ut,X), write(Ut), tab(5), fail.
findUt.
