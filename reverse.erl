-module(reverse).
-export([reverse_list/1]).

reverse_list(List) when is_list(List) ->
	ReversedList = lists:reverse(List),
	ReversedList.
