-module(swap).
-export([fun1/2, fun2/2]).

fun1(A, B) ->
    do_something(),
    fun2(B, A).

fun2(A, B) ->
    io:format("Now A is ~p and B is ~p~n", [A, B]),
    io:format("And B was ~p and A was ~p~n", [B, A]),
    keep_moving().

do_something() ->
    io:format("Doing something...~n").

keep_moving() ->
    io:format("Keeping moving...~n").

