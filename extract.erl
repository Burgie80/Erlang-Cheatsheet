-module(extract).
-export([get_substring/3]).

get_substring(S, I, J) when I >= 0, J > I, J =< length(S) ->
	T = string:sub_string(S, I, J-1),
	T;

get_substring(_, _, _) ->
	error(invalid_indeces).
