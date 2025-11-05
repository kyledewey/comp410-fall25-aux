% printAll(List)
printAll([]).
printAll([Head|Tail]) :-
    writeln(Head),
    printAll(Tail).

% addAmount(InputList, Amount, OutputList)
addAmount([], _, []).
addAmount([InputHead|InputTail],
          Amount,
          OutputList) :-
    OutputHead is InputHead + Amount,
    addAmount(InputTail, Amount, OutputTail),
    OutputList = [OutputHead|OutputTail].
