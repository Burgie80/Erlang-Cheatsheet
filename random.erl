% ------------------------
% Nombre: random.erl
% Descripción: Selecciona un elemento aleatorio de la lista X
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(random).
-export([pick_random/1]).

pick_random(X) when is_list(X) ->
	% Si la lista X está vacía, muestra un error
        case X of
               	[] ->
			error(empty_list);
	% En cualquier otro caso, selecciona un elemento en una distribución
	% uniformemente aleatoria
		_ ->
			lists:nth(rand:uniform(length(X)), X)
	end.
