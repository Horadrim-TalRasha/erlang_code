-module(try_test).
-export([demo1/0, demo2/0]).

demo1() ->
%	T = {len, 16},
%	{name, X} = T.
	io:format("~p~n", [1, 2, 3, 4]).

demo2() ->
	catch io:format("~p~n", [1, 2, 3, 4]).