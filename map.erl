-module(map).
-export([create_map/0]).

create_map() ->
	X = #{one => 1, "two" => 2.0, <<"three">> => [i, i, i]},
	X.
