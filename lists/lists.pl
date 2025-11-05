% printAll(List)
printAll([]).
printAll([Head|Tail]) :-
    writeln(Head),
    printAll(Tail).

% addAmount(InputList, Amount, OutputList)
addAmount([], _, []).
addAmount([InputHead|InputTail],
          Amount,
          [OutputHead|OutputTail]) :-
    OutputHead is InputHead + Amount,
    addAmount(InputTail, Amount, OutputTail).

% myAppend(InputList1, InputList2, OutputList)
myAppend([], List, List).
% FOR MONDAY: recursive case of myAppend
