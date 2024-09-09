-module(return_two).
-export([search/2]).

-spec search(T, [[T]]) -> {pos_integer(), pos_integer()}.
search(X, M) -> search(X, M, 1).

search(_, [], _) -> throw(notfound);

search(X, [R|Rs], RN) ->
    case search_row(X, R) of
        notfound -> search(X, Rs, RN+1);
        CN -> {RN, CN}
    end.

search_row(X, Row) -> search_row(X, Row, 1).

search_row(_, [], _) -> notfound;
search_row(X, [X|_], CN) -> CN;
search_row(X, [_|Elems], CN) -> search_row(X, Elems, CN+1).
