#!/usr/bin/env escript
%% Erlang script seed.
%% Use this to get started quickly, and customize it to your needs.

% Define the main function that takes command line arguments
main(Args) ->
    try
        % Parse command line arguments into a FlagMap
        FlagMap = parse_args(Args),
        % Call handle_flags function to process the FlagMap
        handle_flags(FlagMap)
    catch
        error:unknown_arg ->
            % If an unknown argument is provided, print usage and exit
            print_usage(),
            halt(1)
    end;
% If no arguments are provided, print usage and exit
main(_) ->
    print_usage(),
    halt(1).

% Handle different flags based on the FlagMap
handle_flags(#{help := true}) ->
    % If the help flag is set to true, print usage and exit
    print_usage(),
    halt(0);
handle_flags(#{name := Name}) ->
    % If the name flag is provided, print a greeting message with the name
    io:format("Hello ~s!~n~nYou ran the Erlang seed script!~n", [Name]).

% Function to parse command line arguments and return a FlagMap
parse_args(Args) ->
    parse_args(Args, #{name => "world"}).

% Recursive function to process command line arguments and update the FlagMap
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
    % If an unknown argument is encountered, raise an error
    error(unknown_arg).

% Function to print the usage message
print_usage() ->
    UsageString = "Usage: erlang_seed [options]~n"
                  "Prints a message as an example of parsing CLI args in Erlang.~n~n"
                  "Options:~n"
                  "  -h|--help       Prints this help message.~n"
                  "  -n|--name NAME  Specify the user's name.~n",
    io:format(UsageString).
