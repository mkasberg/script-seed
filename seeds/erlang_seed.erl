#!/usr/bin/env escript
%% Erlang script seed.
%% Use this to get started quickly, and customize it to your needs.

main(Args) ->
    try
        FlagMap = parse_args(Args),
        handle_flags(FlagMap)
    catch
        error:unknown_arg ->
            print_usage(),
            halt(1)
    end;
main(_) ->
    print_usage(),
    halt(1).

handle_flags(#{help := true}) ->
    print_usage(),
    halt(0);
handle_flags(#{name := Name}) ->
    io:format("Hello ~s!~n~nYou ran the Erlang seed script!~n", [Name]).

parse_args(Args) ->
    parse_args(Args, #{name => "world"}).

parse_args([], FlagMap) ->
    FlagMap;
parse_args(["-n", Name | Args], FlagMap) ->
    parse_args(Args, FlagMap#{name => Name});
parse_args(["--name", Name | Args], FlagMap) ->
    parse_args(Args, FlagMap#{name => Name});
parse_args(["-h" | Args], FlagMap) ->
    parse_args(Args, FlagMap#{help => true});
parse_args(["--help" | Args], FlagMap) ->
    parse_args(Args,FlagMap#{help => true});
parse_args(_, _) ->
    error(unknown_arg).

print_usage() ->
    UsageString = "Usage: erlang_seed [options]~n"
                  "Prints a message as an example of parsing CLI args in Erlang.~n~n"
                  "Options:~n"
                  "  -h|--help       Prints this help message.~n"
                  "  -n|--name NAME  Specify the user's name.~n",
    io:format(UsageString).
