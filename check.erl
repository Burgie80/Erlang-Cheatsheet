-module(check).
-export([contains/2]).

contains(X, List) ->
	lists:member(X, List).
