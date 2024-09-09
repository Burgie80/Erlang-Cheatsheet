-module(random).
-export([pick_random/1]).

pick_random(X) when is_list(X) ->
        case X of
               	[] ->
			error(empty_list);
		_ ->
			lists:nth(rand:uniform(length(X)), X)
	end.
