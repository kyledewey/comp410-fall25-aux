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
