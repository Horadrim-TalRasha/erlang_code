%% for exercise 2
-module(str_mod).
-export([str_travel/1, str_remove_char_once/2]).

str_travel([]) -> ok;

str_travel([T|H])	->
	io:format("str:~c~n", [T]),
	str_travel(H).
	
str_remove_char_once(STR, CHAR) ->
	STR -- atom_to_list(CHAR).