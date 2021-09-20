%%%-------------------------------------------------------------------
%%% @author ewhimad
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Jul 2021 14:56
%%%-------------------------------------------------------------------
-module(temp).
-author("ewhimad").
-export([convert/1]).
%% API


f2c(F) ->
    5*(F-32)/9.

c2f(C) ->
    C*(9/5)+32.

convert({Temp, Int}) ->
    case {Temp, Int} of
        {f,Int} ->
            f2c(Int);
        {c,Int} ->
            c2f(Int);
        {_, _} ->
            io:format("error ~n")
    end.