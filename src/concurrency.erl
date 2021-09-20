%%%-------------------------------------------------------------------
%%% @author ewhimad
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Jul 2021 10:18
%%%-------------------------------------------------------------------
-module(concurrency).
-author("ewhimad").
-export([speak/2,start/0, ping/2, pong/0]).
%% API

speak(What, 0) ->
    done;
speak(What, Times) ->
    io:format("~p~n", [What]),
    speak(What, Times-1).

%start() ->
%    spawn(concurrency, speak, [hello, 3]),
%    spawn(concurrency, speak, [what, 3]).

ping(0, Pong_PID)->
    Pong_PID ! finished,
    io:format("ping finished~n", []);

ping(N, Pong_PID)->
    Pong_PID ! {ping, self()},
    receive
        pong ->
            io:format("Ping Received pong~n", [])
    end,
    ping(N-1, Pong_PID).

pong()->
    receive
        finished->
            io:format("Pong finished~n", []);
        {ping, Ping_PID} ->
            io:format("Pong received ping~n", []),
            Ping_PID ! pong,
            pong()
    end.

start()->
    Pong_PID = spawn(concurrency, pong, []),
    spawn(concurrency, ping, [3, Pong_PID]).



