f(0,1).
f(X,5) :- X>0.
g(X,Y) :- Y is 2*X.

speaks(allen,russian).
speaks(bob,english).
speaks(mary,russian).
speaks(mary,english).
talkswith(Person1,Person2:-speaks(Person1,L), speaks(Person2,L), Person1 \= Person2.

factorial(0,1).
factorial(N,Result) :- N>0, M is N-1, factorial(M,SubResult), Result is N*SubResult.

fib(0,1).
fib(1,1).
fib(N,R) :- N>1, N1 is N-1, N2 is N-@, fib(N1, R1), fib(N2,R2), R is R1 + R2.

head([X|_], X).
tail([_|T], T).

trace(factorial/2).

member(X,[X|_]).
member(X,[_|Y]) :- member(X,Y).

append([],X,X).
append1([H|T],Y,[H|Z]) :- append1(T,Y,Z).

f(0,1).
f(X,5) :- X>0.
is the same as:
f(0,1) :- !.
f(X,5) :-.

bsort(L,S) :- append(U,[A,B|V],L), B<A, !,
append(U,[B,A|V],M), bsort(M,S).
bsort(L,L).

s(X, Y) :- np(X, U), vp(U, Y).
np(X, Y) :- det(X, U, n(U, Y).
vp(X, Y) :- tv(X, U), np(U, Y).
vp(X, Y) :- iv(X, Y).
det([the | Y], Y).
det([a | Y], Y).
det([an | Y], Y).
n([giraffe | Y], Y).
n([apple | Y], Y).
iv([dreams | Y], Y).
tv([eats | Y], Y).
tv([dreams | Y], Y).

s(X, Y) :- np(X, U), vp(U, Y).
s([the, giraffe, dreams], []).
s([the, giraffe, sleeps], []).
s(X, []).

s(s(NP,VP)) --> np(NP),vp(VP).
np(np(DET,N)) --> det(DET),n(N).
vp(vp(tv(TV),np(NP))) --> tv(TV),np(NP).
vp(vp(VP)) --> iv(VP).
det(det(the)) --> [the].
det(det(a)) --> [a].
det(det(a)) --> [an].
n(n(giraffe)) --> [giraffe].
n(n(apple)) --> [apple].
iv(iv(dreams)) --> [dreams].
tv(tv(eats)) --> [eats].
tv(tv(dreams)) --> [dreams].