# Script Seed

[![Build Status](https://travis-ci.org/mkasberg/script-seed.svg?branch=master)](https://travis-ci.org/mkasberg/script-seed)

🌱 Seed scripts for popular scripting languages.

Visit the **[website](https://mkasberg.github.io/script-seed/)** to find a
sample script in your favorite language.


## Contributing

Script Seed needs **your** help! Please contribute by:

 * Adding a new scripting language. I want to include _everything_ that can be
   run on Ubuntu with a `#!` line.
 * Improving existing script seeds. Each seed should be an example of best
   practices in the given language.

See [CONTRIBUTING](CONTRIBUTING.md) for more info.

## Developer Environment Setup

You'll have the best experience on macOS or Linux. On Windows, some scripts will
work if you have the appropriate language installed. Regardless of your
platform, you'll probably find running scripts and/or the site itself inside a
Docker container to be the best experience unless you're working with a single
script that you can easily test yourself.

A Makefile is provided so you can get started quickly with Docker. For example,
simply run `make shell` to get an interactive prompt with all our supported
languages available.

    $ make
    Usage: make [target]
    
    Targets:
      help   Print this help message.
      image  Build the script-seed:latest Docker image.
      test   Run the test suite inside a Docker container.
      server Serve the website.
      shell  Open a shell inside the Docker container for manual testing.
      clean  Remove the Docker image.

