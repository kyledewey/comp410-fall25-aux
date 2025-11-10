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

% myAppend(list1, list2) => OutputList
% def myAppend(list1, list2):
%   if isinstance(list1, Nil):
%     return list2
%   elif isinstance(list1, Cons):
%     head = list1.head
%     tail = list1.tail
%     rest = myAppend(tail, list2)
%     return Cons(head, rest)

% myAppend(InputList1, InputList2, OutputList)
myAppend([], List, List).
myAppend([Head|Tail], List2, [Head|Rest]) :-
    myAppend(Tail, List2, Rest).


