-module(marguments).
-export([add/2,add/3,start/0]).

add(X,Y) ->
    A = X + Y,
    io:fwrite("The Sum of first function is : ~w~n",[A]).

add(X,Y,Z) ->
    B = X + Y + Z,
    io:fwrite("The Sum of second function is : ~w~n",[B]).

start() ->
    add(5,6),
    add(5,6,7).