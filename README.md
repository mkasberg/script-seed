# Script Seed

[![Build Status](https://travis-ci.org/mkasberg/script-seed.svg?branch=master)](https://travis-ci.org/mkasberg/script-seed)

🌱 Seed scripts for popular scripting languages.

Visit the **[website](https://mkasberg.github.io/script-seed/)** to find a
sample script in your favorite language.


## Contributing

Script Seed needs **your** help! Please contribute by:

 * Adding a new scripting language. I want to include _everything_ that can be
   run on Ubuntu with a shebang line.
 * Improving existing script seeds. Each seed should be an example of best
   practices in the given language.

See [CONTRIBUTING](CONTRIBUTING.md) for more info.

## Developer Environment Setup

You'll have the best experience on macOS or Linux. On Windows, some scripts
will work if you have the appropriate language installed, and you'll still be
able to run everything inside the Docker container.

### Adding or Modifying a Script Seed

If you want to add or make changes to a single seed, it is probably easiest
to simply run the script on your host computer. Of course, you'll have to have
the appropriate scripting language installed for this to work. If you can't or
don't want to install the language on your host machine, you can use the
script-seed Docker container to work with any of the scripts in this repository:

    $ make shell

### Test Suite

The test suite requires [Docker](https://www.docker.com/) (because of our
dependency on a lot of different languages). Use `make` to run the tests:

    $ make test

Inside the container, we run the `test.sh` script (which an also be run outside
the container if you have all the dependencies installed). `test.sh` makes some
simple assertions on all of our scripts:

 * The script executes without throwing errors.
 * The script produces a useful help message with the `-h` flag.
 * The script is an executable text file (with a shebang).

### GitHub Pages Website

The GitHub Pages site is a relatively basic page with HTML and Javascript.

It's important to note that we have some Javascript code that makes async
requests for the script resources themselves. Serving async requests over the
`file://` protocol will not work in a browser, so use a
[local test server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server)
to develop the website locally. For example, `python3 -m http.server` or
`python2 -m SimpleHTTPServer`.
