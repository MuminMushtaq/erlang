-module(stringlower).
-export([start/0]).
-import(string,[to_upper/1]).

start() ->
S1 = "hello you son of a b",
S2 = to_upper(S1),
io:fwrite("~p~n",[S2]).
