-module(sort_bubble).
-export([up_bubble/2, sort_bubble/1]).

%% 实现冒泡排序，将比较大的数往列表的表尾移动，当出现参数X == H的时候不做移动
up_bubble(H, []) -> [H];
up_bubble(X, [H|L]) ->
	%io:format("bubble:~p~n", L),
	if X > H ->
	    [H|up_bubble(X, L)];
	H =< X ->
	    [X|up_bubble(H, L)];
	true ->
		[X|up_bubble(H, L)]
	end.

sort_bubble([H|L]) ->
	up_bubble(H, L).