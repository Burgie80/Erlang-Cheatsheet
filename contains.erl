% ------------------------
% Nombre: contains.erl
% Descripción: Verifica si una palabra existe en una cadena
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------


-module(contains).
-export([string_contains_word/2]).

% Busca el substring Word en S, y verifica que la posición retornada sea mayor 0
% de otro modo, la palabra no se encuentra en S
string_contains_word(S, Word) ->
	Ok = string:str(S, Word) > 0,
	Ok.
