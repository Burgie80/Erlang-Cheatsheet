% ------------------------
% Nombre: big_sum.erl
% Descripción: Suma una lista de enteros
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(big_sum).
-export([sum_list/1]).

sum_list(X) ->
	% Suma la lista de números X
	S = lists:sum(X),
	S.
