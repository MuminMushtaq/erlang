-module(ascii).
-export([start/0]).

start() ->
    A = $A
    io:fwrite("~p~n",[A]).