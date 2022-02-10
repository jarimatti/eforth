-module(ef_stack_tests).

-include_lib("eunit/include/eunit.hrl").

new_test() ->
    ?assertEqual(ef_stack:new(), []).

push_pop_test() ->
    E = ef_stack:new(),
    A = ef_stack:push(E, 3),
    ?assertEqual(ef_stack:pop(A), {3, E}).

empty_pop_error_test() ->
    ?assertError(function_clause, ef_stack:pop(ef_stack:new())).
