% the spawn function is used to create the process in erlang. 
-module(concurrency).
-export([start/0, print_msg/2]).

print_msg(_Msg, 0) ->
     % this is called as dont care condition. it wont match anything whatever you are saying
% it will pass that. 
% this 0 is used then only it will execute the spawn function. if it is other than 0 then it will execute the 
% below function. 
    done;
print_msg(Msg,N) ->
    io:format("~p~n",[Msg]),
    print_msg(Msg, N-1).      % this is called recursion. 

start() ->
    % print_msg("hi",5),
    % print_msg("bye",5),
    spawn(?MODULE, print_msg,["hi",4]), % it takes three arguments. the module name, the function name & values.
    spawn(?MODULE, print_msg,["bye",4]),
    ok.
 % spawn(module, function, [arguments])
    
% concurrency.erl(END)

% in total three processes are created. one for the whole program, second the first spawn function 
% and third for the second spawn function

% in the first case it will produce "hi" 5 times continously.
% in the second case it will produce "bye" 5 times continously
% in the first case it will produce "hi" 1 time and after that "bye" 1 time. this is concurrency. 
% spawn functions creates concurrency. 