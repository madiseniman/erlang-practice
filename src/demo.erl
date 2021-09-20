%%%-------------------------------------------------------------------
%%% @author ewhimad
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Jul 2021 14:42
%%%-------------------------------------------------------------------
-module(demo).
-author("ewhimad").
-export([double/1]).
%% API.

double(X) ->
    times(X, 2).

times(X, N) ->
    X * N.


