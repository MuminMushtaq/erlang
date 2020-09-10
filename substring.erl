-module(substring).
-export([start/0]).
-import(string,[sub_string/3]).

start() ->
    S1 = "Hello Jhonny",
    S2 = sub_string(S1,1,7),
    io:fwrite("~p~n",[S2]).