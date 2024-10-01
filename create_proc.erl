% ------------------------
% Nombre: create_proc.erl
% Descripción: Crea un procedimiento que imprime "#YOLO!"
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(create_proc).
-export([procedure/0]).

% Define un procedimiento (no retorno)
-spec procedure() -> _.
procedure() -> io:format("#YOLO!~n").
