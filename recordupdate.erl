-module(recordupdate).
-export([start/0]).
-record(person, {name = "",id}).

start() ->
    P = #person{name = "John",id = 1},
    P1 = P#person{name = "Mumin"},

    io:fwrite("id = ~p~n",[P1#person.id]),
    io:fwrite("~p~n",[P1#person.name]).










