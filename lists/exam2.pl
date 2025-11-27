%% allEqual([]).
%% allEqual([_]).
%% allEqual([H, H|T]) :-
%%     allEqual([H|T]).

% allEqual(List, Element)
allEqual([], _).
allEqual([Element|Rest], Element) :-
    allEqual(Rest, Element).

allEqual([]).
allEqual([Head|Tail]) :-
    allEqual(Tail, Head).

    
