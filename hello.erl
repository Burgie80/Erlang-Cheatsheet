% ------------------------
% Nombre: hello.erl
% Descripción: Imprime "Hello, world!" en consola
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(hello).
-export([salute/0]).

% Imprime "Hello, world!" en consola
salute() ->
	io:format("~s~n", ["Hello, world!"]).
