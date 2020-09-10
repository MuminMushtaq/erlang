-module(guardscase).
-export([start/0]).

start() -> 
    N = 10,
    case N of {N} 
     when N > 10 ->
        io:fwrite("The value of N is greater than 10\n");
    10 -> io:fwrite("The value is equal to 10\n");
        _ -> io:fwrite("The value of N is less than 10\n") % like a default case
end.