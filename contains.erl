-module(contains).
-export([string_contains_word/2]).

string_contains_word(S, Word) ->
	Ok = string:str(S, Word) > 0,
	Ok.
