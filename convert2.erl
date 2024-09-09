-module(convert2).
-export([real_to_str2/1]).

real_to_str2(X) ->
	S = io_lib:format("~.2f", [X]),
	S.
