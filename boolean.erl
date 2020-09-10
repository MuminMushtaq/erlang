-module(boolean).
-export([start/0]).

start() ->
    io:fwrite("~w\n",[2=<3]).