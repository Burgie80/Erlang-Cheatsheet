% ------------------------
% Nombre: map2.erl
% Descripción: Itera un mapa imprimiendo los pares llave-valor
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(map2).
-export([iterate_map/1]).

iterate_map(MyMap) ->
%	Aplica la función fun que imprime el par llave-valor
%	de cada par en el mapa MyMap
	maps:fold(
		fun(K, V, ok) ->
			io:format("~p: ~p~n", [K, V])
		end, ok, MyMap).
