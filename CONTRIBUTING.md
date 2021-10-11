# Contributing to Script Seed

Thank you for contributing to Script Seed! Here are some notes to help you out.

If you haven't finished the [README](README.md), start there to understand how
this project uses Docker. You don't need to have Docker installed to work with a
single script, but you do need it to run the tests or work with all our scripts
without installing all the dependencies. If you can't run the tests locally,
GitHub Actions will run them for you when you make a PR. Pay attention to the
results.

## Test Suite

The test suite requires [Docker](https://www.docker.com/) (because of our
dependency on a lot of different languages). Use `make` to run the tests:

    $ make test

Inside the container, we run the `test.sh` script (which can also be run outside
the container if you have all the dependencies installed). `test.sh` makes some
simple assertions on all of our scripts:

 * The script executes without throwing errors.
 * The script produces a useful help message with the `-h` flag.
 * The script is an executable text file (with a shebang).
 * The script allows you to pass a name in with `-n NAME`.

## GitHub Pages Website

The GitHub Pages site is a relatively basic page with HTML and Javascript. Use
`make` to run the website locally:

    $ make server

It's important to note that we have some Javascript code that makes async
requests for the script resources themselves. Serving async requests over the
`file://` protocol will not work in a browser, so we use a
[local test server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server)
to develop the website locally inside Docker. Even while serving the site from
Docker, you should be able to edit the files on the host computer in your
favorite IDE.

## How to Add a Language

I want this repository to have a "seed script" (an boilerplate script) for every language than can run on Linux with a `#!` line!

If you want to add a language:

 1. Add the script itself to `seeds/`. Don't forget to make it executable (`chmod +x`).
 2. Add any required dependencies to the `Dockerfile`. Install using `apt-get` if possible (the Dockerfile is for Ubuntu Linux). Otherwise, install using any method that works.

    https://github.com/mkasberg/script-seed/blob/7ee5e3fb830fc52d5c9cb1b490b8f8dbdb548c5b/Dockerfile#L5-L6

 3. Add the script to the list in `index.html` so it appears in our dropdown.

    https://github.com/mkasberg/script-seed/blob/7ee5e3fb830fc52d5c9cb1b490b8f8dbdb548c5b/index.html#L35-L36

 4. Add the script to the list in `main.js` so we get syntax highlighting.

    https://github.com/mkasberg/script-seed/blob/7ee5e3fb830fc52d5c9cb1b490b8f8dbdb548c5b/main.js#L2-L6

## Tips for Contributing

* If you have an idea for significant changes or improvements, opening an issue
  first to discuss your idea will help us get on the same page so there's a
  clear path to merging your pull request. But this isn't necessary for small
  changes.
* If you're making improvements to an existing script, try to keep your commits
  concise, and explain the reason for the change in a [well
  written](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
  commit message.
* If you're adding a new language, make sure your script is executable and
  includes a proper shebang line at the top. Prefer `#!/usr/bin/env` where
  appropriate.
* To pass our simple test harness, your script should print usage instructions
  when `-h` is passed.
* For simplicity and testing reasons, we only support languages that can be run as an executable text file (with a `#!`) on Ubuntu Linux.
* If you need help with the `Dockerfile` or HTML or JS, just open a PR with the script itself and we'll try to help you through the rest.
* Your pull request will be automatically tested by GitHub Actions.
