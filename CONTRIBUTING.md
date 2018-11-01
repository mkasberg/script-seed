# Contributing to Script Seed

Thank you for contributing to Script Seed! Here are some notes to help you out.

If you haven't finished the [README](README.md), read through the entire thing
first to get your development environment set up.

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
  [Travis CI](https://travis-ci.org/mkasberg/script-seed). If you want to run
  the tests locally, see the [README](https://github.com/mkasberg/script-seed).
