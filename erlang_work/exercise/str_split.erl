%% for exercise 7, 8
-module(str_split).
-export([str_to_ipv4/1]).

str_to_ipv4(IPV4) ->
	

decode_ipv4(IPV4)
	when is_list(IPV4) ->
	IPV4_len = string:words(IPV4, $.),
	if 
		IPV4_len > 4 ->
			{error, bad_format};
		true ->
			
	end.
	
