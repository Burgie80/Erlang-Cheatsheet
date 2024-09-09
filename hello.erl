-module(hello).
-export([salute/0]).

salute() ->
	io:format("~s~n", ["Hello, world!"]).
