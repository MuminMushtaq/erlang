-module(week).
-export([admit/1,start/0]).

admit(Days) -> 
    case Days of 
        {N} when N == 1 ->
            monday;
        {N} when N == 2 ->
            tuesday;
        {N} when N == 3 ->
            wednesday;
        {N} when N == 4 ->
            thursday;
        {N} when N == 5 ->
            friday;
        {N} when N == 6 ->
            saturday;
        {N} when N == 7 ->
            sunday;
        _ -> 
            no_Match_Found
end.
start() ->
    A = {5},
    io:fwrite(admit(A)),
    io:nl().