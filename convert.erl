-module(convert).
-export([str_to_int/1]).

str_to_int(S) ->
	I = list_to_integer(S, 10),
	I.
