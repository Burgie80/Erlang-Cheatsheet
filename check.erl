% ------------------------
% Nombre: check.erl
% Descripción: Verifica si un elemento dado forma parte de una lista dada.
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(check).
-export([contains/2]).

% Checa si el elemento X está en List
contains(X, List) ->
	lists:member(X, List).
