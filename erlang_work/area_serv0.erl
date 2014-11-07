-module(area_serv0).
-export([loop/0]).

loop()->
	receive
		{rectangle, Width, Ht} ->
			io:format("Area of rectangle is ~p~n", [Width * Ht]),
			loop();
		{circle, R} ->
			io:format("Area of circle is ~p~n", [R * 3.1415 * 3.1415]),
			loop();
		Other->
			io:format("I don't know what the area of a ~p is ~n", [Other]),
			loop()
	end.