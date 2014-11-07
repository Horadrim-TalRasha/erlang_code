%% for exercise 6
-module(lst_match).
-export([match/2]).

match(K, H)
	when is_atom(K),
		 is_list(H) ->
	try do_match(K, H)
	catch
	_:_ ->
		undefined
	end.

%%do_match(K, []) 
%%	when is_atom(K) ->
%%	undefined;
	
do_match(K, [{K, V}|_H]) 
	when is_atom(K) ->
	V.
	