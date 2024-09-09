-module(uniform2).
-export([pick_rand_int/2]).

pick_rand_int(A, B) when A < B ->
	crypto:rand_uniform(A, B);

pick_rand_int(_, _) ->
	error(invalid_range).
