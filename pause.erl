-module(pause).
-export([paused_salute/0]).

paused_salute() ->
	io:format("Hello\n"),
	timer:sleep(5000),
	io:format("World\n").
