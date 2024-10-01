% ------------------------
% Nombre: map.erl
% Descripción: Crea un término mapa con elementos predefinidos
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(map).
-export([create_map/0]).

% Retorna un mapa con los elementos predefinidos
create_map() ->
	X = #{one => 1, "two" => 2.0, <<"three">> => [i, i, i]},
	X.
