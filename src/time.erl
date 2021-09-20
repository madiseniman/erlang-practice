%%%-------------------------------------------------------------------
%%% @author ewhimad
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Jul 2021 13:15
%%%-------------------------------------------------------------------
-module(time).
-author("ewhimad").
-export([swedish_date/0, swedate/0]).
%% API

swedish_date() ->
    {YY,MM,DD} = date(),
    integer_to_list(YY) ++
        pad_string(integer_to_list(MM)) ++
        pad_string(integer_to_list(DD)).

pad_string([D]) ->
    [$0,D];
pad_string(S) ->
    S.

swedate() ->
    DateVals = [D rem 100 || D <- tuple_to_list(date())],
    lists:flatten(io_lib:format("~w~2..0w~2..0w", DateVals)).
