% ------------------------
% Nombre: reverse.erl
% Descripción: Devuelve la lista volteada
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(reverse).
-export([reverse_list/1]).

% Invierte la lista dada
reverse_list(List) when is_list(List) ->
	ReversedList = lists:reverse(List),
	ReversedList.
