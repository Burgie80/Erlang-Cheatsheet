-module(extract2).
-export([extract_prefix/1]).

extract_prefix(S) ->
	T = string:slice(S, 0, 5),
	T.
