% ------------------------
% Nombre: points.erl
% Descripción: Genera una estructura point que guarda sus coordenadas X y Y
%	       así como los elementos para crear el punto, y los getters para
%	       cada coordenada
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(points).
-export([new/2, x/1, y/1]).

% Crea un tipo point definido por los float X y Y
-opaque point() :: #{x => float(), y => float()}.
-export_type([point/0]).

% Función que inicializa un punto con las coordenadas dadas
-spec new(float(), float()) -> point().
new(X, Y) -> #{x => X, y => Y}.

% Getter para la coordenada X
-spec x(point()) -> float().
x(#{x := X}) -> X.

% Getter para la coordenada Y
-spec y(point()) -> float().
y(#{y := Y}) -> Y.
