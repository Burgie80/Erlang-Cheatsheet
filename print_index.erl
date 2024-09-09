-module(print_index).
-export([print_list/1]).

print_list(Items) ->
	WithIndex =
		lists:zip(lists:seq(1, length(Items)), Items), 
		io:format("~p~n", [WithIndex]).
