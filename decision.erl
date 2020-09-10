-module(decision).
-export([start/2]).

start(X,Y) ->
    if
        X>Y -> true;
    true ->
        false
end. 