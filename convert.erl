% ------------------------
% Nombre: convert.erl
% Descripción: Convierte un string en número
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------


-module(convert).
-export([str_to_int/1]).

% Recibe una lista S y la convierte en un número de base 10
str_to_int(S) ->
	I = list_to_integer(S, 10),
	I.
