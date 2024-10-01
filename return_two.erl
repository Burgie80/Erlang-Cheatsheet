% ------------------------
% Nombre: return_two.erl
% Descripción: Define un conjunto de métodos auxiliares para buscar un elemento 
%              X en una matriz dada, y devolver su posición si es que existe
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(return_two).
-export([search/2]).

% Definición de un elemento de tipo T en una matriz y devuelve una tupla de índices
-spec search(T, [[T]]) -> {pos_integer(), pos_integer()}.
% Inicia la búsqueda de X en M comenzando en la fila 1
search(X, M) -> search(X, M, 1).

% Si no se encuentran filas, se lanza una excepción
search(_, [], _) -> throw(notfound);

% Busca el elemento X en la fila R, si lo encuentra, devuelve la tupla de las posiciones
% En caso contrario, busca en las otras filas
search(X, [R|Rs], RN) ->
    case search_row(X, R) of
        notfound -> search(X, Rs, RN+1);
        CN -> {RN, CN}
    end.

% Busca X en la fila actual, comenzando el columna 1
search_row(X, Row) -> search_row(X, Row, 1).

% Si la fila está vacía, devuelve notfound
search_row(_, [], _) -> notfound;

% Si encuentra X, devuelve la posición actual
search_row(X, [X|_], CN) -> CN;

% Si no lo encuentra, avanza a la siguiente columna
search_row(X, [_|Elems], CN) -> search_row(X, Elems, CN+1).
