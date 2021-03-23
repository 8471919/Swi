?-assert(mother(eve, abel)).
?-assert(mother(eve, cain)).
?-assert(father(adam, abel)).
?-assert(father(adam, cain)).
?-assert(father(abel, mary)).

?-assert(parent(X,Y) :- father(X,Y)).
?-assert(parent(X,Y) :- mother(X,Y)).
?-assert(grandfather(X,Z) :- (father(X,Y), parent(Y,Z))).
?-assert(grandmother(X,Z) :- (mother(X,Y), parent(Y,Z))).

