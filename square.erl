-module(square).
-export([start/2]).

start(X,Y) ->
    Z = X*X + Y*Y + 2*X*Y .