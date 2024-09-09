-module(shuffle_list).
-export([shuffle/1]).

shuffle(X) ->
	[Y||{_, Y} <- lists:sort([ {rand:uniform(),
	N} || N <- X])].
