%% for exercise 9, 10
-module(lf_year).
-export([islf/1]).

islf(X) ->
	if X rem 400 =:= 0 -> true;
	   (X rem 4 =:= 0) and (X rem 100 =/= 0) -> true;
	true -> false
	end.
		