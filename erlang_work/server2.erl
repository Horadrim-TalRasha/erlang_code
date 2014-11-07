-module(server2).
-behaviour(server1).
-export([message/0]).

message() -> 
	io:format("damn you -callback~n").