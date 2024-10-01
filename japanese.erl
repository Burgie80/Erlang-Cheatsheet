% ------------------------
% Nombre: japanese.erl
% Descripción: Convierte "neko" a un bitstring
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(japanese).
-export([translate_cat/0]).

% Convierte la palabra "ネコ" a un término binary() que se imprime como bitstring
translate_cat() ->
	S = unicode:characters_to_binary("ネコ"),
	S.
