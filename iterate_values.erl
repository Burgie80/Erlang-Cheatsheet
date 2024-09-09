-module(iterate_values).
-export([iterate/1]).

double(X) -> X + X.

do_something(X) ->
	io:format("~p~n", [double(X)]).

iterate(Items) ->
	[do_something(X) || X <- Items].
