-module(matrix).
-export([create_matrix/2]).

create_matrix(M, N) ->
	X = [{R * 1.0, C * 1.0} || R <- lists:seq(1, M), C <- lists:seq(1, N)],
	X.
