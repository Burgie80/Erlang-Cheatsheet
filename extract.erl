% ------------------------
% Nombre: extract.erl
% Descripción: Obtiene un substring de la cadena S empezando por
%	       la posición I y terminando en la posición J - 1
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(extract).
-export([get_substring/3]).

% Cadena que obtiene un substring T del string S en el tramo [I, J-1]
get_substring(S, I, J) when I >= 0, J > I, J =< length(S) ->
	T = string:sub_string(S, I, J-1),
	T;

% Cláusula para cuando los índices no son válidos (en el rango de 0 a length(S))
get_substring(_, _, _) ->
	error(invalid_indeces).
