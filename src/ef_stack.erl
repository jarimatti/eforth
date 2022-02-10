-module(ef_stack).

-export([new/0, push/2, pop/1]).

new() ->
    [].

push(Stack, X) ->
    [X | Stack].

pop([X | Stack]) ->
    {X, Stack}.
