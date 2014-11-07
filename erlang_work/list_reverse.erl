-module(list_reverse).
-export([reverse/1]).

reverse([H|T]) -> reverse(T) ++ [H];
reverse([]) -> [].

%%ppow(X, 1) -> X * 1;
%%ppow(X, Y) -> X * ppow(X, Y - 1).
