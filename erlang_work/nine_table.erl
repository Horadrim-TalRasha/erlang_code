-module(nine_table).
-export([printHtable/2, printVtable/2]).

printHtable(X, 1) -> io:format("~p * ~p = ~p~n", [X, 1, X * 1]);
printHtable(X, Y) -> io:format("~p * ~p = ~p  ", [X, Y, X * Y]),
		     printHtable(X, Y - 1).

printVtable(X, 1) -> printHtable(X, 1);

%% 宏?MODULE为本模块
printVtable(X, Y) -> ?MODULE:printHtable(X, Y),
		     printVtable(X - 1, Y - 1).