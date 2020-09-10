-module(stringright).
-export([start/0]).
-import(string,[right/3]).

start() ->
    Str1 = "hello",
    Str2 = right(Str1,2,$.),
    io:fwrite("~p~n",[Str2]).
    