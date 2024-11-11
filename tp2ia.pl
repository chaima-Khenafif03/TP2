% 1. Predicate to check if X is an element of list L.
element(X, [X|_]).
element(X, [_|T]) :-
    element(X, T).

% 2. Predicate to check if E is the first element of L.
first(E, [E|_]).

% 3. Predicate to find the last element of a list L.
last(X, [X]).
last(X, [_|T]) :-
    last(X, T).

% 4. Predicate to find the penultimate (second-to-last) element of a list L.
penultimate(X, [X, _]).
penultimate(X, [_|T]) :-
    penultimate(X, T).

% 5. Predicate to remove the Kth element from list L1 and return result in L2.
del_k(X, [X|T], 1, T).
del_k(X, [H|T], K, [H|R]) :-
    K > 1,
    K1 is K - 1,
    del_k(X, T, K1, R).

% 6. Predicate to calculate the length of list L.
length([], 0).
length([_|T], N) :-
    length(T, N1),
    N is N1 + 1.

% 7. Predicate to check if L has an even number of elements.
even(L) :-
    length(L, N),
    N mod 2 =:= 0.

% 8. Predicate to concatenate L1 and L2 into L3 (without using append).
concat([], L, L).
concat([H|T], L, [H|R]) :-
    concat(T, L, R).

% 9. Predicate to check if L is a palindrome.
palindrome(L) :-
    reverse(L, L).

% Helper predicate to reverse a list (for palindrome check).
reverse([], []).
reverse([H|T], R) :-
    reverse(T, RevT),
    concat(RevT, [H], R).
