% ------------------------
% Nombre: tree.erl
% Descripción: Implementa un árbol con nodos que pueden tener múltiples hijos
% Autor: Burgie80
% Fecha de creación: 8/9/24
% ------------------------

-module(tree).
-export([create_node/1, add_child/2, print_tree/1]).

% Define el registro 'node', que tiene un valor y una lista de hijos
-record(node, {
    value,            % Valor del nodo
    children = [] :: [node()]  % Lista de hijos (inicialmente vacía)
}).

% Crea un nuevo nodo con un valor dado
create_node(Value) ->
    #node{value = Value}.

% Añade un hijo al nodo padre
add_child(Parent, Child) ->
    NewChildren = [Child | Parent#node.children], % Agrega el nuevo hijo al principio de la lista
    Parent#node{children = NewChildren}.

% Imprime el árbol empezando por la raíz
print_tree(Tree) ->
    print_node(Tree, 0).  % Llama a la función auxiliar para imprimir el nodo con la indentación

% Función auxiliar que imprime un nodo y recorre sus hijos
print_node(Node, Indent) ->
    Indentation = lists:duplicate(Indent, $ ),  % Crea un string de espacios para la indentación
    io:format("~sValue: ~p~n", [Indentation, Node#node.value]),  % Imprime el valor del nodo
    lists:foreach(fun(Child) -> print_node(Child, Indent + 2) end, Node#node.children).  % Recorre e imprime los hijos
