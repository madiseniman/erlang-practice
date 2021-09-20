%%%-------------------------------------------------------------------
%%% @author ewhimad
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Jul 2021 17:03
%%%-------------------------------------------------------------------
-module(lists1).
-author("ewhimad").
-export([min/1, max/1, min_max/1]).
%% API

max(L) -> max(L, 0).

max([], N) -> N;
max([H|T], N) when H> N-> max(T, H);
max([H|T], N) when H =< N -> max(T, N).

min(L) -> min(L, 10).
min([], N) -> N;
min([H|T], N) when H >= N -> min(T, N);
min([H|T], N) when H < N -> min(T, H).

min_max(L) ->
    {min(L), max(L)}.
