% fib(0) = 1
% fib(1) = 1
% fib(n) = fib(n - 1) + fib(n - 2), if n > 1

% def fib(n):
%   if n == 0:
%     return 1
%   elif n == 1:
%     return 1
%   elif n > 1:
%     return fib(n - 1) + fib(n - 2)

% fib(InputN, Output)
fib(0, 1).
fib(1, 1).
fib(N, Output) :-
    N > 1,
    NMinusOne is N - 1,
    NMinusTwo is N - 2,
    fib(NMinusOne, Fib1), % Fib1 = fib(NMinusOne)
    fib(NMinusTwo, Fib2), % Fib2 = fib(NMinusTwo)
    Output is Fib1 + Fib2.


factorial(0, 1).
factorial(N, Output) :-
    N > 0,
    NMinusOne is N - 1,
    factorial(NMinusOne, Fact),
    Output is N * Fact.

myBetween(Low, High, Low) :- % base case
    Low =< High.
myBetween(Low, High, Result) :- % recursive case
    Low =< High,
    NewLow is Low + 1,
    myBetween(NewLow, High, Result).

%% myBetween(F, L, X) :-
%%     F =< L,
%%     (X is F; (FNext is F + 1,
%%               myBetween(FNext, L, X))).
 
% exp ::= number(PROLOG_NUMBER) |
%         add(exp, exp) |
%         minus(exp, exp) |
%         mult(exp, exp) |
%         unary_minus(exp)

%% eval(N, N) :-
%%     integer(N).

% eval(ASTRepresentation, Result)
eval(number(N), N).
eval(add(E1, E2), Result) :-
    eval(E1, E1Result),
    eval(E2, E2Result),
    Result is E1Result + E2Result.
eval(minus(E1, E2), Result) :-
    eval(E1, E1Result),
    eval(E2, E2Result),
    Result is E1Result - E2Result.
eval(mult(E1, E2), Result) :-
    eval(E1, E1Result),
    eval(E2, E2Result),
    Result is E1Result * E2Result.
eval(unary_minus(E), Result) :-
    eval(E, EResult),
    Result is -EResult.


