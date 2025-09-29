% This is a comment
% Files == databases

% isInteger of arity 1
% isInteger/1 procedure
isInteger(1). % fact
isInteger(2). % fact
isInteger(3). % fact

% closed-world hypothesis: all truth is in this file.
% Everything else is false.

isFloat(3.14).
isFloat(2.2).

% atom: alice, bob; basically a string
isName('alice foo').
isName(bob).

% isInteger of arity 2
isInteger(1, 2).

isOne(1).

isTwo(2).

isBool(true).
isBool(false).

areEqual(X, X).

areEqual(A, A, A, A).


isWarm(pizza).
isWarm(burger).
isWarm(burrito).

% Approach #1
%% likes(alice, pizza, burger, burrito, yogurt).
%% likes(bob, pizza, burger, salad, milk).

% Approach #2
%% aliceLikes(pizza).
%% aliceLikes(burger).
%% aliceLikes(burrito).
%% aliceLikes(yogurt).

%% bobLikes(pizza).
%% bobLikes(burger).
%% bobLikes(salad).
%% bobLikes(milk).

% Approach #3
likes(alice, pizza).
likes(alice, burger).
likes(alice, burrito).
likes(alice, yogurt).
likes(bob, burger).
likes(bob, pizza).
likes(bob, salad).
likes(bob, milk).
likes(bill, X) :-
    isWarm(X).
likes(janet, X) :-
    likes(bob, X),
    likes(alice, X).
likes(mel, yogurt).
likes(mel, X) :-
    likes(janet, X).


% between0And10/1 procedure
% a rule
between0And10(N) :- % head of the rule
    % body of the rule
    %% 0 =< N,
    %% N =< 10.
    betweenMinMaxInclusive(0, 10, N).

% Min <= Num <= Max
betweenMinMaxInclusive(Min, Max, Num) :-
    Min =< Num,
    Num =< Max.

    
