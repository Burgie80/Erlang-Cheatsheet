% ------------------------
% Nombre: swap.erl
% Descripción: Utiliza una función auxiliar con los argumentos intercambiados
%	       para hacer un 'swap' entre variables
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(swap).
-export([fun1/2, fun2/2]).

% Llama a do_something, luego a una función auxiliar la cual tiene los argumentos intercambiados
fun1(A, B) ->
    do_something(),
    fun2(B, A).

% Utiliza los argumentos intercambiados para hacer un swap y luego imprimir los valores
fun2(A, B) ->
    io:format("Now A is ~p and B is ~p~n", [A, B]),
    io:format("And B was ~p and A was ~p~n", [B, A]),
    keep_moving().

% Función que simula hacer algo 
do_something() ->
    io:format("Doing something...~n").

% Función que simula moverse
keep_moving() ->
    io:format("Keeping moving...~n").

