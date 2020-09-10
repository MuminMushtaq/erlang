-module(guards).
-export([display/1,start/0]).

display(N) when N > 10 ->
    io:fwrite("greater than 10\n");
display(N) when N < 10 -> 
    io:fwrite("Less than 10\n").

start() -> 
    display(11).