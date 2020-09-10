-module(record).
-export([start/0]).
-record(person, {name = "",id}).

start() ->
    P = #person{name = "John",id = 1}.