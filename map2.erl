-module(map2).
-export([iterate_map/1]).

iterate_map(MyMap) ->
	maps:fold(
		fun(K, V, ok) ->
			io:format("~p: ~p~n", [K, V])
		end, ok, MyMap).
