-module(bubble_sort).
-export([len/1,bubble_once/2,bubble_sort/1]).

%% No2.冒泡排序
%% 函数len：求出列表的长度，系统模块中有函数length(L)可以实现此功能
len([]) -> 0;
len([H|T]) -> 1 + len(T).

%% 函数bubble_once:一次冒泡排序，将最小元素放入列表尾
bubble_once(H,[]) -> [H];
bubble_once(X,[H|T]) -> 
    if X =< H ->
        [H|bubble_once(X,T)];
        X > H ->
        [X|bubble_once(H,T)]
    end.

bubble_sort(L) -> bubble_sort(L,len(L)).

%% 对列表L的前N个元素进行冒泡排序，直到N=1
bubble_sort(L,1) -> L;
bubble_sort([H|T],N) -> 
    Result = bubble_once(H,T),
    io:format("No.~w process: ~p~n",[len([H|T])-N+1,Result]),%%显示每次排序结果
    bubble_sort(Result,N-1).%%继续对列表前N-1个元素进行排序