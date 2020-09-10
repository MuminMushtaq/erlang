-module(stringtrailing).
-export([start/0]).
-import(string,[left/3]).

start() ->
    Str1 = "hello",
    Str2 = left(Str1,3,$.),
    io:fwrite("~p~n",[Str2]).
    