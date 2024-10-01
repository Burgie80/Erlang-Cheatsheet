% ------------------------
% Nombre: create_func.erl
% Descripción: Crea una función que retorna el cuadrado de un número X
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(create_func).
-export([square/1]).

% Definición de función que recibe un enterno y retorno otro
-spec square(integer()) -> integer().
% Si X es un entero, retorna su cuadrado
square(X) when is_integer(X) -> X * X.
