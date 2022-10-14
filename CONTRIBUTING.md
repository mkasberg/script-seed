# Contributing to Script Seed

Thank you for contributing to Script Seed! Here are some notes to help you out.

If you haven't finished the [README](README.md), start there to understand how
this project uses VS Code Dev Containers and Docker.

## EditorConfig

We have a [EditorConfig](https://editorconfig.org/) file to enforce a consistent
code style. It's recommended to use an appropriate EditorConfig plugin for your
IDE. We enforce our code style with a check in GitHub Actions.

## Test Suite

The test suite can be run with `test.sh` inside the dev container:

    $ ./test.sh

`test.sh` makes some simple assertions on all of our scripts:

 * The script executes without throwing errors.
 * The script produces a useful help message with the `-h` flag.
 * The script is an executable text file (with a shebang).
 * The script allows you to pass a name in with `-n NAME`.

The test suite can also be run from outside the dev container with `make test`.

GitHub Actions will run our tests when you open a pull request. Pay attention to
the results.

## GitHub Pages Website

The GitHub Pages site is a relatively basic page with HTML and Javascript.

Use `bin/server` to run the website from the dev container:

    $ bin/server

It's important to note that we have some Javascript code that makes async
requests for the script resources themselves. Serving async requests over the
`file://` protocol will not work in a browser, so we use a [local test
server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server).
Even while the server is running, you should be able to edit the files and
refresh the browser to see changes.

The server can also be run from outside the dev container with `make server`.

## How to Add a Language

I want this repository to have a "seed script" (an boilerplate script) for every
language than can run on Linux with a `#!` line!

If you want to add a language:

 1. Add the script itself to `seeds/`. Don't forget to make it executable (`chmod +x`).
 2. Add any required dependencies to the `.devcontainer/Dockerfile`. Install using `apt-get` if possible (the Dockerfile is for Ubuntu Linux). Otherwise, install using any method that works.

    https://github.com/mkasberg/script-seed/blob/7ee5e3fb830fc52d5c9cb1b490b8f8dbdb548c5b/Dockerfile#L5-L6

 3. Add the script to the list in `index.html` so it appears in our dropdown.

    https://github.com/mkasberg/script-seed/blob/7ee5e3fb830fc52d5c9cb1b490b8f8dbdb548c5b/index.html#L35-L36

 4. Add the script to the list in `main.js` so we get syntax highlighting.

    https://github.com/mkasberg/script-seed/blob/7ee5e3fb830fc52d5c9cb1b490b8f8dbdb548c5b/main.js#L2-L6

 5. Re-download Prism.js with all the required languages (including the new
    one). Update the link here to include the new language so it's easy to
    update in the future.

    https://prismjs.com/download.html#themes=prism&languages=markup+clike+javascript+awk+bash+basic+erlang+go+groovy+java+lua+markup-templating+perl+php+powershell+python+ruby+scala+tcl

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
* For simplicity and testing reasons, we only support languages that can be run
  as an executable text file (with a `#!`) on Ubuntu Linux.
* If you need help with the Dockerfile, HTML, or JS, just open a PR with the
  script itself and we'll try to help you through the rest.
* Your pull request will be automatically tested by GitHub Actions.
