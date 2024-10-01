% ------------------------
% Nombre: convert2.erl
% Descripción: Convierte un número a string
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------


-module(convert2).
-export([real_to_str2/1]).

% Formate un número real a un string con dos decimales
real_to_str2(X) ->
	S = io_lib:format("~.2f", [X]),
	S.
