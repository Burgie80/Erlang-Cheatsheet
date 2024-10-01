% ------------------------
% Nombre: binary_tree.erl
% Descripción: Implementación de un árbol binario
% 	       definiendo un nuevo tipo que guarda el valor
% 	       y las referencias a los subárboles.
% 	       Contiene métodos para crear un árbol, insertar un valor
%	       en el árbol correspondiente según su orden, y la impresión del
%	       árbol en in-order.
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(binary_tree).
-export([new/1, insert/2, in_order/1]).
-export_type([binary_tree/1]).

% Tipo de define un nodo del árbol
-type binary_tree(T) ::
    #{ data := T
     , left := binary_tree(T)
     , right := binary_tree(T)
     }.

% Procedimiento para crear un nuevo nodo del árbol con el valor asignado
-spec new(T) -> binary_tree(T).
new(Data) ->
    #{data => Data, left => undefined, right => undefined}.

% Procedimiento para insertar un valor en el árbol
-spec insert(T, binary_tree(T)) -> binary_tree(T).
% Si el árbol no existe, genera uno con el valor dado asignado a la raíz
insert(Value, undefined) -> new(Value);
% Si el valor es menor a un nodo especifico, se recursa el árbol izquierdo
insert(Value, #{data := Data, left := Left, right := Right} = Tree) when Value < Data ->
    Tree#{left := insert(Value, Left)};
% Si el valor es mayor a un nod específico, se recursa el árbol derecho
insert(Value, #{data := Data, left := Left, right := Right} = Tree) when Value >= Data ->
    Tree#{right := insert(Value, Right)}.

% Navega el árbol en in-order e imprime cada valor que encuentre a la consola
-spec in_order(binary_tree(T)) -> [T].
% Si el árbol no está definido, retorna una lista vacía
in_order(undefined) ->
    [];
% Imprime el árbol en la forma IZQ - Raíz - DER
in_order(#{data := Data, left := Left, right := Right}) ->
    in_order(Left) ++ [Data] ++ in_order(Right).
