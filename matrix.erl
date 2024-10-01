% ------------------------
% Nombre: matrix.erl
% Descripción: Crea una matriz de M * N con secuencias de 1 a M y 1 a N
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(matrix).
-export([create_matrix/2]).

% Crea una matriz utilizando rangos [1, M] y [1, N]
create_matrix(M, N) ->
	X = [{R * 1.0, C * 1.0} || R <- lists:seq(1, M), C <- lists:seq(1, N)],
	X.
