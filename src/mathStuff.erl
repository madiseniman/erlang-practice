%%%-------------------------------------------------------------------
%%% @author ewhimad
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Jul 2021 16:16
%%%-------------------------------------------------------------------
-module(mathStuff).
-author("ewhimad").
-export([perimeter/1, perimeter/4]).
%% API

perimeter(_, Side, Side2, Side3) ->
    triangle(Side, Side2, Side3).

perimeter({Form, Side}) ->
    case {Form, Side} of
        {square, Side} ->
            square(Side);
        {circle, Radius} ->
            circle(Radius)
    end.

square(Side) ->
    Side*4.
circle(Radius) ->
    (Radius*2)*3.14.
triangle(Side, Side2, Side3) ->
    Side+Side2+Side3.
