-module(anonymous).
-export([start/0]).

start() ->
    Fn = fun() ->
        io:fwrite("This is Anonymous Function\n")
end,
Fn().