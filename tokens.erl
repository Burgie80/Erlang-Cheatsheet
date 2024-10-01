% ------------------------
% Nombre: tokens.erl
% Descripción: Separa un string por sus espacios en blanco
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(tokens).
-export([separate_chunks/1]).

separate_chunks(S) ->
	% Especifica que el string S se debe separar por espacios en blanco
	Chunks = string:tokens(S, [$\s]),
	Chunks.
