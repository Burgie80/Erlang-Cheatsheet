% ------------------------
% Nombre: insert.erl
% Descripción: Inserta un elemento X en la posición I de una lista S
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(insert).
-export([insert_at/3]).

% Si el índice I está dentro de S, divide la lista S en I e inserta el elemento X, para formar la nueva lista
insert_at(S, I, X) when I >= 0, I =< length(S) ->
	{Left, Right} = lists:split(I-1, S),
	Left ++ [X|Right];

% Cláusula para cuando el índice no es válido
insert_at(_, _, _) ->
	error(invalid_indeces).
