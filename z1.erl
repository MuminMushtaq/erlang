-module(z1).
-export([start/0]). 

    start() -> 
        N = 9, 
        if  
            N > 10 -> 
              io:fwrite("N is greater than 10\n"); 
        true -> 
              io:fwrite("N is less than 10\n") 
        end.