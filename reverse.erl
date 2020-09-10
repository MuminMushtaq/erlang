-module(reverse).
-export([series/2,start/0]).

series2(N) when  N =< 0 -> 0;
series2(N) when N > 0 ->
    R = N rem 10,
    Sum(N) = (Sum*10)+R,
     N + series2(floor(N/10)).

start() ->
    X = series2(40),
    io:fwrite("reverse=~p",[X]).