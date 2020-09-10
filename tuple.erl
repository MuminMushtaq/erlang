-module(tuple).
-export([start/0]).
start() ->
    P={john,24,{djf,675}},
    io:fwrite("~w~n",[tuple_size(P)]).