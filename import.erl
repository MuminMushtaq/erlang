-module(import).
-export([start/0]).
-import(io,[fwrite/1]).

start() ->
    fwrite("hello world\n").