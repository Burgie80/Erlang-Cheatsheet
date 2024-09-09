-module(points).
-export([new/2, x/1, y/1]).

-opaque point() :: #{x => float(), y => float()}.
-export_type([point/0]).

-spec new(float(), float()) -> point().
new(X, Y) -> #{x => X, y => Y}.

-spec x(point()) -> float().
x(#{x := X}) -> X.

-spec y(point()) -> float().
y(#{y := Y}) -> Y.
