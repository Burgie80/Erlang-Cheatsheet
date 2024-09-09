-module(insert).
-export([insert_at/3]).

insert_at(S, I, X) when I >= 0, I =< length(S) ->
	{Left, Right} = lists:split(I-1, S),
	Left ++ [X|Right];

insert_at(_, _, _) ->
	error(invalid_indeces).
