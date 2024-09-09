-module(hello10).
-export([salute10/0]).

salute10() ->
	lists:foreach(
		fun(_) ->
    			io:format("Hello~n")
  		end, lists:seq(1, 10)).
