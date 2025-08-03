-module(sum_even).
-export([main/0]).

main() ->
    Sum = lists:sum([X || X <- lists:seq(0, 100), X rem 2 == 0]),
    io:format("Result: ~p~n", [Sum]).
