% ------------------------
% Nombre: break.erl
% Descripción: Busca números negativos en una lista de números dada
%	       y detiene su ejecución una vez encuentre uno.
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(break).
-export([find_negative_in/1]).

% Cláusula para lista vacía
find_negative_in([]) -> undefined;
% Si la lista no está vacía, toma la primera fila, y llama a una función auxiliar
find_negative_in([Row|Rows]) -> find_negative_in(Row, Rows).
% Procesa fila por fila usando una función auxiliar
find_negative_in([], Rows) -> find_negative_in(Rows);
% Si el primer elemento es positivo, sigue procesando la fila
find_negative_in([Pos|Values], Rows) when Pos >= 0 ->
	find_negative_in(Values, Rows);
% Cuando encuentra un negativo, simplemente lo retorna
find_negative_in([Neg|_], _) -> Neg.
