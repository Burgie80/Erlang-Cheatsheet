% ------------------------
% Nombre: hello10.erl
% Descripción: Imprime "Hello" 10 veces en consola
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(hello10).
-export([salute10/0]).

salute10() ->
	% Genera una secuencia de 1 a 10, y por cada elemento,
	% genera una función anónima que imprime "Hello" y la ejecuta
	lists:foreach(
		fun(_) ->
    			io:format("Hello~n")
  		end, lists:seq(1, 10)).
