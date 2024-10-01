% ------------------------
% Nombre: multiline.erl
% Descripción: Imprime un string multilínea
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(multiline).
-export([print_string/0]).

print_string() ->
	% Define un string en múltiples líneas
	S = "String
may span
across multiple lines"
	     "and they can"
	     "have as many portions"
	     "as you want"
	     "all of them quoted",
	% Especifica que el string está definido en múltiples líneas
	io:format("~s~n", [S]).
