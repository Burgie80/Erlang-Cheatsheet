-module(binary_tree).
-export([new/1, insert/2, in_order/1]).
-export_type([binary_tree/1]).

-type binary_tree(T) ::
    #{ data := T
     , left := binary_tree(T)
     , right := binary_tree(T)
     }.

-spec new(T) -> binary_tree(T).
new(Data) ->
    #{data => Data, left => undefined, right => undefined}.

-spec insert(T, binary_tree(T)) -> binary_tree(T).
insert(Value, undefined) -> new(Value);
insert(Value, #{data := Data, left := Left, right := Right} = Tree) when Value < Data ->
    Tree#{left := insert(Value, Left)};
insert(Value, #{data := Data, left := Left, right := Right} = Tree) when Value >= Data ->
    Tree#{right := insert(Value, Right)}.

-spec in_order(binary_tree(T)) -> [T].
in_order(undefined) ->
    [];
in_order(#{data := Data, left := Left, right := Right}) ->
    in_order(Left) ++ [Data] ++ in_order(Right).
