% ------------------------
% Nombre: pause.erl
% Descripción: Imprime las palabras "Hello" y "World" separadas por una espera de 5 segundos
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(pause).
-export([paused_salute/0]).

paused_salute() ->
	% Imprime "Hello"
	io:format("Hello\n"),
	% Duerme al programa por 5 segundos
	timer:sleep(5000),
	% Imprime "World"
	io:format("World\n").
