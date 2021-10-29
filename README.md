# Script Seed

🌱 Seed scripts for popular (and unpopular) scripting languages.

Also, a great way to experiment with [VS Code Dev Containers](https://code.visualstudio.com/docs/remote/containers).

Visit the **[website](https://mkasberg.github.io/script-seed/)** to find a
sample script in your favorite language. The idea is to give you just enough
boilerplate code to parse command line arguments and give you a sense of how the
language works.


## Contributing

Script Seed needs **your** help! Please contribute by:

 * Adding a new scripting language. I want to include _everything_ that can be
   run on Ubuntu with a `#!` line.
 * Improving existing script seeds. Each seed should be an example of best
   practices in the given language.
 * Improving the look, feel, and usability of the [GitHub pages
   site](https://mkasberg.github.io/script-seed/).

See [CONTRIBUTING](CONTRIBUTING.md) for more info.

## Developer Environment Setup

This repository is configured with a [VS Code Dev
Container](https://code.visualstudio.com/docs/remote/containers). You will have
the best development experience if you use VS Code with the Remote Containers
extension. In particular, every supported scripting language will be available
in the dev container, and `bin/server` will work.

If you're **not** using VS Code, a Makefile is provided so you can get started
quickly with the same Docker dev container. For example, simply run `make shell`
to get an interactive prompt with all our supported languages available. You can
leave that shell open to test your scripts while you edit them on the host
machine in your favorite IDE.

    $ make
    Usage: make [target]

    Targets:
      help   Print this help message.
      image  Build the script-seed:latest Docker image.
      test   Run the test suite inside a Docker container.
      server Serve the website.
      shell  Open a shell inside the Docker container for manual testing.
      clean  Remove the Docker image.
