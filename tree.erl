-module(tree).
-export([create_node/1, add_child/2, print_tree/1]).

-record(node, {
    value,
    children = [] :: [node()]
}).

create_node(Value) ->
    #node{value = Value}.

add_child(Parent, Child) ->
    NewChildren = [Child | Parent#node.children],
    Parent#node{children = NewChildren}.

print_tree(Tree) ->
    print_node(Tree, 0).

print_node(Node, Indent) ->
    Indentation = lists:duplicate(Indent, $ ),
    io:format("~sValue: ~p~n", [Indentation, Node#node.value]),
    lists:foreach(fun(Child) -> print_node(Child, Indent + 2) end, Node#node.children).
