# Script Seed

[![Build Status](https://travis-ci.org/mkasberg/script-seed.svg?branch=master)](https://travis-ci.org/mkasberg/script-seed)

🌱 Seed scripts for popular scripting languages.

https://mkasberg.github.io/script-seed/

## Contributing

Script Seed needs **your** help! Please contribute by:

 * Adding a new scripting language. I want to include _everything_ that can be
   run on Ubuntu with a shebang line.
 * Improving existing script seeds. Each seed should be an example of best
   practices in the given language.

See [CONTRIBUTING](CONTRIBUTING.md) for more info.

## Developer Notes

* Serving async requests over the `file://` protocol will not work in a browser.
  Use a [local test server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server)
  to develop the website locally. For example, `python3 -m http.server` or
  `python2 -m SimpleHTTPServer`.

### Tests

If you have [Docker](https://www.docker.com/) installed, you can use the
`test-with-docker.sh` script to run all the tests inside a Docker container:

    $ sh test-with-docker.sh

Inside the container, we run the `test.sh` script (which an also be run outside
the container if you have all the dependencies installed). `test.sh` makes some
simple assertions on all of our scripts:

 * The script executes without throwing errors.
 * The script produces a useful help message with the `-h` flag.
 * The script is an executable text file (with a shebang).

