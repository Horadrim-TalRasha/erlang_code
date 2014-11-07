-module(addToList).
-export([alt1/2, alt2/2]).

%% add element from one list to another list from head.
alt1([H|From], To) ->
	alt1(From, [H|To]);
	
alt1([], To)->
	To.

%% add element from one list to another list from tail.	
alt2([H|From], To)->
	alt2(From, To ++ [H]);

alt2([], To) ->
	To.