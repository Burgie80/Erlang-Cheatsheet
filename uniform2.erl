% ------------------------
% Nombre: uniform2.erl
% Descripción: Retorna un entero aleatorio del rango [A, B)
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(uniform2).
-export([pick_rand_int/2]).

% Selecciona un entero solo si A es menor que B
pick_rand_int(A, B) when A < B ->
	% Retorna un entero aleatorio entre [A, B)
	crypto:rand_uniform(A, B);

% Muestra un error si A no es menor que B
pick_rand_int(_, _) ->
	error(invalid_range).
