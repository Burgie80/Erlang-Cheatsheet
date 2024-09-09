-module(japanese).
-export([translate_cat/0]).

translate_cat() ->
	S = unicode:characters_to_binary("ネコ"),
	S.
