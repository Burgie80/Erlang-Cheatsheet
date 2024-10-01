% ------------------------
% Nombre: uniform.erl
% Descripción: Retorna un real en el rango de [A, B)
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(uniform).
-export([pick_rand_float/2]).

% Se selecciona un real si A es menor que B
pick_rand_float(A, B) when A < B ->
	% Utiliza el rango de A y B para obtener el real según [0, 1)
	A + (B - A) * rand:uniform();

% Se lanza un error si A no es menor que B
pick_rand_float(_, _) ->
	error(invalid_range).
