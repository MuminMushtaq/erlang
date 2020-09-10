-module(process).
-export([start/0,call/2]). % call is a function used here. 

call(Arg1, Arg2) ->
    io:format("~p ~p~n",[Arg1,Arg2]).
start() ->
    Pid = spawn(?MODULE, call, ["hello", "processes"]), 
        % This is a predefined atom value which must be ?MODULE.
    io:fwrite("~p",[Pid]).