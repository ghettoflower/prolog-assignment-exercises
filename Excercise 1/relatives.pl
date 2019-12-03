parent_of(mary,peter).     parent_of(james,peter).
parent_of(mary,helen).     parent_of(james,helen).
parent_of(mary,lydia).     parent_of(james,lydia).
parent_of(marion,mary).    parent_of(tony,mary).
parent_of(marion,mark).    parent_of(tony,mark).

female(mary).              female(helen).
female(lydia).             female(marion).

male(peter).               male(james).
male(tony).                male(mark).

mother(X) :- female(X), parent_of(X,_).
father(X) :- male(X), parent_of(X,_).

daughter_of(Daughter,Parent) :- parent_of(Parent,Daughter), female(Daughter).

son_of(Son,Parent) :- parent_of(Parent,Son), male(Son).

brother_of(Brother,Sibling) :- parent_of(Parent,Brother), parent_of(Parent,Sibling), Brother \= Sibling, male(Brother).

grandfather_of(G,X) :- male(G), parent_of(G,Z), parent_of(Z,X).

grandmother_of(G,X) :- female(G), parent_of(G,Z), parent_of(Z,X).

grandparent_of(G,X) :- parent_of(G,Z), parent_of(Z,X).

granddaughter_of(X,G) :- female(X), parent_of(Z, X), parent_of(G, Z).

uncle_of(U,X) :- male(U), parent_of(Z,X), parent_of(Parent,U), parent_of(Parent,Z), U \= Z.