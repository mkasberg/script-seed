# Contributing to Script Seed

Thank you for contributing to Script Seed! Here are some notes to help you out.

If you haven't finished the [README](README.md), start there to understand how
this project uses Docker. You don't need to have Docker installed to work with a
single script, but you do need it to run the tests or work with all our scripts
without installing all the dependencies. If you can't run the tests locally,
[TravisCI](https://travis-ci.org/github/mkasberg/script-seed) will run them for
you when you make a PR. Pay attention to the results.

## Test Suite

The test suite requires [Docker](https://www.docker.com/) (because of our
dependency on a lot of different languages). Use `make` to run the tests:

    $ make test

Inside the container, we run the `test.sh` script (which an also be run outside
the container if you have all the dependencies installed). `test.sh` makes some
simple assertions on all of our scripts:

 * The script executes without throwing errors.
 * The script produces a useful help message with the `-h` flag.
 * The script is an executable text file (with a shebang).

## GitHub Pages Website

The GitHub Pages site is a relatively basic page with HTML and Javascript. Use
`make` to run the website locally:

    $ make server

It's important to note that we have some Javascript code that makes async
requests for the script resources themselves. Serving async requests over the
`file://` protocol will not work in a browser, so we use a
[local test server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server)
to develop the website locally inside Docker.

## Tips for Contributing

* If you're making improvements to an existing script, try to keep your commits
  concise, and explain the reason for the change in a [well
  written](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
  commit message.
* If you're adding a new language, make sure your script is executable and
  includes a proper shebang line at the top. Prefer `#!/usr/bin/env` where
  appropriate.
  * To pass our simple test harness, your script should print usage instructions
    when `-h` is passed.
  * Have fun with the message, but make sure it includes the string
    `You planted a` when run with no args.
  * Adding a new language requires the following. If you're unsure about any of
    these steps, feel free to open a pull request with just the script itself
    and we'll help you with the rest.
    * Add the seed script to `seeds/`.
    * Add an option to the dropdown in `index.html`.
    * Add to `LANGUAGES` at the top of `main.js`.
    * If necessary, install support for the language in the `Dockerfile` to
      allow for testing.
* Your pull request will be automatically tested by
  [Travis CI](https://travis-ci.org/mkasberg/script-seed).

