-module(break).
-export([find_negative_in/1]).

find_negative_in([]) -> undefined;
find_negative_in([Row|Rows]) -> find_negative_in(Row, Rows).

find_negative_in([], Rows) -> find_negative_in(Rows);
find_negative_in([Pos|Values], Rows) when Pos >= 0 ->
	find_negative_in(Values, Rows);
find_negative_in([Neg|_], _) -> Neg.
