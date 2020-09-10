-module(funvariable).
-export([start/0]).

start() -> 
    B = 6,
    A = fun(X) ->
        io:fwrite("The value is : ~w~n",[X]),
        io:fwrite("Outside value of B is : ~w~n",[B])
end,
A(5).