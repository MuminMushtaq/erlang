-module(even).
-export([start/1]).

start(X) -> 
    if
        X rem 2 ==0->
            io:fwrite("X is even ~n");
        true ->
            io:fwrite("X is odd ~n")
            
    end.
