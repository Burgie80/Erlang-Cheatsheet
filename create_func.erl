-module(create_func).
-export([square/1]).

-spec square(integer()) -> integer().
square(X) when is_integer(X) -> X * X.
