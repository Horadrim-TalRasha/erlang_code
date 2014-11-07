-module(recode).
-export([test/0]).

-record(server, {port, ip="localhost", maxconn=100}).

test() ->
	Serv1 = #server{},
	io:format("serv1.port = ~p~n", [Serv1#server.port]).