-module(area_serv1).
-export([loop/0, rpc/2]).


loop() ->
	receive
		{From, {rectangle, Width, Ht}} ->
			From ! {self(), Width * Ht};
%			loop();
		{From, {circle, R}} ->
			From ! {self(), R * 3.14159 * 3.14159};
%			loop();
		{From, Other} ->
			From ! {self(), error, Other}
%			loop()
	end.

rpc(PID, REQ) ->
	PID ! {self(), REQ},
	receive
		{PID, RESP} ->
			RESP
	end.

