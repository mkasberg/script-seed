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
handle_flags(#{water := true, type:= SeedType}) ->
    io:format("You watered the ~s.~n", [SeedType]);
handle_flags(#{type := SeedType}) ->
    io:format("You planted a ~s seed!~n", [SeedType]).

parse_args(Args) ->
    parse_args(Args, #{type => "flower"}).

parse_args([], FlagMap) ->
    FlagMap;
parse_args(["-w" | Args], FlagMap) ->
    parse_args(Args, FlagMap#{water => true});
parse_args(["--water" | Args], FlagMap) ->
    parse_args(Args, FlagMap#{water => true});
parse_args(["-t", SeedType | Args], FlagMap) ->
    parse_args(Args, FlagMap#{type => SeedType});
parse_args(["--type", SeedType | Args], FlagMap) ->
    parse_args(Args, FlagMap#{type => SeedType});
parse_args(["-h" | Args], FlagMap) ->
    parse_args(Args, FlagMap#{help => true});
parse_args(["--help" | Args], FlagMap) ->
    parse_args(Args,FlagMap#{help => true});
parse_args(_, _) ->
    error(unknown_arg).

print_usage() ->
    UsageString = "Usage: erlang_seed [options] ~n"
                  "This is a erlang script seed. Customize it to get started quickly with erlang.~n"
                  "Options:~n"
                  "  -h|--help   Prints this help message.~n"
                  "  -t|--type   Specify the type of seed.~n"
                  "  -w|--water  Water the seed.~n",
    io:format(UsageString).
