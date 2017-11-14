%Definitions for isElementInList(El, List)

isElementInList(X, [X|T]).
isElementInList(X, [H|T]):-
isElementInList(X, T).
		  
%Definitions for mergeLists(List1, List2, Merged)

mergeLists([], Y, Y).
mergeLists([H|[]], Y, [H|Y]).
mergeLists([H|T], Y, Conc) :- 
mergeLists(T, Y, C), 
mergeLists([H], C, Conc).
	
%Definitions for reverseList(List, ReversedList)

reverseList([],[]).
reverseList([H|T], Y):-
reverseList(T, Z), 
mergeLists(Z, [H], Y).

%insertElementIntoListEnd(El, List, NewList)

insertElementIntoListEnd(X, Y, Z) :- 
mergeLists(Y, [X], Z).