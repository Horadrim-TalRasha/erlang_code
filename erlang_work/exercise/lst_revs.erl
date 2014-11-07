%% for exercise 4.
-module(lst_revs).
-export([list_reverse/1]).

list_reverse([]) -> [];

list_reverse([T|H]) ->
	list_reverse(H) ++ [T].