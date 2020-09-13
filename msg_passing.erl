-module(msg_passing).
-export([start/0, proc1/2, proc2/0]).

proc1(0, Pid2) ->
    Pid2 ! finished,
    io:format(" msg1 finished~n");
proc1(N, Pid2) ->
    Pid2 ! {msg1, self()},
    receive 
        msg2 ->
            io:format("Proc1 received message~n")
end,
proc1(N-1, Pid2).

proc2() ->
    receive
        finished ->
            io:format("msg2 finished~n");
        {msg1, Pid1} ->
            io:format("Proc2 recieved message~n"),
            Pid1 ! msg2,
            proc2()
end.
start() ->
    Pid2 = spawn(msg_passing, proc2, []),
    spawn(msg_passing, proc1, [3,Pid2]).