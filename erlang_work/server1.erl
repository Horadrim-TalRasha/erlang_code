-module(server1).
-export([start/2, rpc/2, loop/3]).



%% key word -- '-callback' couldn't be write at implements of other functions.
-callback message() -> ok | {error, Reason :: any()}.

start(Name, Mod) ->
	register(Name, spawn(fun() -> loop(Name, Mod, Mod:init()) end)).
	
rpc(Name, Request) ->
	Name ! {self(), Request},
	receive
		{Name, Response} -> Response
	end.
	
loop(Name, Mod, State) ->
	receive
		{From, Request} ->
			{Response, State1} = Mod:handle(Request, State),
			From ! {Name, Response},
			loop(Name, Mod, State1)
	end.