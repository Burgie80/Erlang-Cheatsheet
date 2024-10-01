% ------------------------
% Nombre: iterate_values.erl
% Descripción: Aplica una función que duplica cada elemento de una lista
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(iterate_values).
-export([iterate/1]).

% Duplica el valor X
double(X) -> X + X.

% Imprime en consola el doble de X
do_something(X) ->
	io:format("~p~n", [double(X)]).

% Aplica la función do_something/1 a cada elemento de Items
iterate(Items) ->
	[do_something(X) || X <- Items].
