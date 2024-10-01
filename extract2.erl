% ------------------------
% Nombre: extract2.erl
% Descripción: Extrae una subcadena de 5 caracteres del inicio de la cadena
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(extract2).
-export([extract_prefix/1]).

% Extrae un substring T de longitud 5 desde el inicio del string S
extract_prefix(S) ->
	T = string:slice(S, 0, 5),
	T.
