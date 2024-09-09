-module(uniform).
-export([pick_rand_float/2]).

pick_rand_float(A, B) when A < B ->
	A + (B - A) * rand:uniform();

pick_rand_float(_, _) ->
	error(invalid_range).
