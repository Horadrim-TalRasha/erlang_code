%% for exercise 1.
-module(pow).
-export([pow/2]).

pow(Base, 1) -> Base;
pow(Base, Pow)
	when is_integer(Base) andalso
		 is_integer(Pow) ->
	Base * pow(Base, Pow - 1).