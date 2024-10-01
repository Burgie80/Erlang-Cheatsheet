# Define the Erlang compiler
ERLC = erlc

# Find all .erl files in the current directory
SRCS = $(wildcard *.erl)

# Define the object files (replace .erl with .beam)
BEAMS = $(SRCS:.erl=.beam)

# Default target
all: $(BEAMS)

# Compile each .erl file
%.beam: %.erl
	$(ERLC) $<

# 25 problemas
run_hello:
	@echo "Ejecutando programa 1..."
	erl -noshell -s hello salute -s init stop

run_hello10:
	@echo "Ejecutando programa 2..."
	erl -noshell -s hello10 salute10 -s init stop

run_create_proc:
	@echo "Ejecutando programa 3..."
	erl -noshell -s create_proc procedure -s init stop

run_create_func:
	@echo "Ejecutando programa 4..."
	erl -noshell -eval "Square = create_func:square(5), io:format(\"~p~n\", [Square]), init:stop()."

run_points:
	@echo "Ejecutando programa 5..."
	erl -noshell -eval "P = points:new(3.5, 4.7), io:format('P: ~p~n', [P]), X = points:x(P), io:format('X: ~p~n', [X]), Y = points:y(P), io:format('Y: ~p~n', [Y]), init:stop()."

run_iterate_values:
	@echo "Ejecutando programa 6..."
	erl -noshell -eval "iterate_values:iterate([1, 2, 3, 4]), init:stop()."

run_print_index:
	@echo "Ejecutando programa 7..."
	erl -noshell -eval "print_index:print_list([4, 5, 6, 7]), init:stop()."

run_map:
	@echo "Ejecutando programa 8..."
	erl -noshell -eval "Map = map:create_map(), io:format(\"~p~n\", [Map]), init:stop()."

run_binary_tree:
	@echo "Ejecutando programa 9..."
	erl -noshell -eval "Root = binary_tree:new(6), Tree1 = binary_tree:insert(3, Root), Tree2 = binary_tree:insert(8, Tree1), InOrder = binary_tree:in_order(Tree2), io:format(\"~p~n\", [InOrder]), init:stop()."

run_shuffle_list:
	@echo "Ejecutando programa 10..."
	erl -noshell -eval "List = shuffle_list:shuffle([1, 2, 3, 4]), io:format(\"~p~n\", [List]), init:stop()."

run_random:
	@echo "Ejecutando programa 11..."
	erl -noshell -eval "Rand = random:pick_random([1, 2, 3, 4, 5]), io:format(\"~p~n\", [Rand]), init:stop()."

run_check:
	@echo "Ejecutando programa 12..."
	erl -noshell -eval "Contains = check:contains(3, [1, 5, 8, 3, 9, 2]), io:format(\"~p~n\", [Contains]), init:stop()."

run_map2:
	@echo "Ejecutando programa 13..."
	erl -noshell -eval "MyMap = #{one => 1, \"two\" => 2, <<\"three\">> => 3}, map2:iterate_map(MyMap), init:stop()."

run_uniform:
	@echo "Ejecutando programa 14..."
	erl -noshell -eval "Rand = uniform:pick_rand_float(3, 6), io:format(\"~p~n\", [Rand]), init:stop()."

run_uniform2:
	@echo "Ejecutando programa 15..."
	erl -noshell -eval "Rand = uniform2:pick_rand_int(3, 6), io:format(\"~p~n\", [Rand]), init:stop()."

run_tree:
	@echo "Ejecutando programa 17..."
	erl -noshell -eval "Root = tree:create_node(3), Child1 = tree:create_node(2), Child2 = tree:create_node(4), Tree1 = tree:add_child(Root, Child1), Tree2 = tree:add_child(Tree1, Child2), Tree = tree:print_tree(Tree2), io:format(\"~p~n\", [Tree]), init:stop()."

run_reverse:
	@echo "Ejecutando programa 19..."
	erl -noshell -eval "Reverse = reverse:reverse_list([1, 2, 3, 4]), io:format(\"~p~n\", [Reverse]), init:stop()."

run_return_two:
	@echo "Ejecutando programa 20..."
	erl -noshell -eval "Matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]], Two = return_two:search(4, Matrix), io:format(\"~p~n\", [Two]), init:stop()."

run_swap:
	@echo "Ejecutando programa 21..."
	erl -noshell -eval "swap:fun1(3, 4), swap:fun2(3, 4), init:stop()."

run_convert:
	@echo "Ejecutando programa 22..."
	erl -noshell -eval "Res = convert:str_to_int(\"12\"), io:format(\"~p~n\", [Res]), init:stop()."

run_convert2:
	@echo "Ejecutando programa 23..."
	erl -noshell -eval "Res = convert2:real_to_str2(10.56767), io:format(\"~p~n\", [Res]), init:stop()."

run_japanese:
	@echo "Ejecutando programa 24..."
	erl -noshell -eval "Cat = japanese:translate_cat(), io:format(\"~p~n\", [Cat]), init:stop()."

run_matrix:
	@echo "Ejecutando programa 26..."
	erl -noshell -eval "Matrix = matrix:create_matrix(2, 3), io:format(\"~p~n\", [Matrix]), init:stop()."

# 9 Problemas
run_extract:
	@echo "Ejecutando programa 38..."
	erl -noshell -eval "Substr = extract:get_substring(\"Hello World\", 4, 8), io:format(\"~p~n\", [Substr]), init:stop()."

run_contains:
	@echo "Ejecutando programa 39..."
	erl -noshell -eval "Contains = contains:string_contains_word(\"Hello, World\", \", Wo\"), io:format(\"~p~n\", [Contains]), init:stop()."

run_break:
	@echo "Ejecutando programa 43..."
	erl -noshell -eval "Matrix = [[1, 2, 3], [4, -5, 6], [7, 8, 9]], Negative = break:find_negative_in(Matrix), io:format(\"~p~n\", [Negative]), init:stop()."

run_insert:
	@echo "Ejecutando programa 44..."
	erl -noshell -eval "Arr = insert:insert_at([1, 2, 3, 6, 7], 4, 5), io:format(\"~p~n\", [Arr]), init:stop()."

run_pause:
	@echo "Ejecutando programa 45..."
	erl -noshell -s pause paused_salute -s init stop

run_extract2:
	@echo "Ejecutando programa 46..."
	erl -noshell -eval "Prefix = extract2:extract_prefix(\"Hello, World\"), io:format(\"~p~n\", [Prefix]), init:stop()."

run_multiline:
	@echo "Ejecutando programa 48..."
	erl -noshell -s multiline print_string -s init stop

run_tokens:
	@echo "Ejecutando programa 49..."
	erl -noshell -eval "Chunks = tokens:separate_chunks(\"Hello, world! Here I go!\"), io:format(\"~p~n\", [Chunks]), init:stop()."

run_big_sum:
	@echo "Ejecutando programa 54..."
	erl -noshell -eval "Sum = big_sum:sum_list([1, 2, 3, 4, 5, 6]), io:format(\"~p~n\", [Sum]), init:stop()."

# Delete the executables
clean:
	rm -f *.beam
