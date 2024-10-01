% ------------------------
% Nombre: print_index.erl
% Descripción: Imprime la lista dada junto a su posición en esta
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(print_index).
-export([print_list/1]).

print_list(Items) ->
	% Genera una lista de 1 a length(Items) y la combina con la lista Items
	WithIndex = lists:zip(lists:seq(1, length(Items)), Items),
	% Imprime la lista de pares
	io:format("~p~n", [WithIndex]).
