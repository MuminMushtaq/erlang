-module(number).
-export([start/0]).

start() ->
    io:fwrite("~w\n",[1.5+1]).