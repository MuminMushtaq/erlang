-module(list).
-export([start/0]).

start() ->
    Lst1 = [1,2,4,8],
    io:fwrite("~w~n",[Lst1]).