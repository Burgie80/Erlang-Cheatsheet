% ------------------------
% Nombre: shuffle_list.erl
% Descripción: Ordena aleatoriamente la lista dada
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(shuffle_list).
-export([shuffle/1]).

shuffle(X) ->
	% Genera una lista de tuplas {Aleatorio, Elemento} donde 'Aleatorio' es un número aleatorio
    	% Luego ordena las tuplas por el valor aleatorio usando lists:sort/1
    	% Finalmente, extrae solo los elementos originales (Y) en el nuevo orden
	[Y||{_, Y} <- lists:sort([ {rand:uniform(),
	N} || N <- X])].
