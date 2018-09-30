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

The `test.sh` script provides a very rudimentary test framework. Of course, the
machine running the tests must support all of the scripting languages to be
tested. The `Dockerfile` provides an environment where all the languages are
pre-installed.
