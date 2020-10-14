#!/bin/bash
set -e

echo "Script Seed entrypoint called with [$1]"
echo "Installing yargs for JavaScript..."
npm install yargs

if [[ "$1" == "test" ]]; then
    # Run tests and exit
    exec /root/script-seed/test.sh
fi

if [[ "$1" == "server" ]]; then
    # Start a webserver to preview the site
    echo ''
    echo 'Serving Script Seed at http://localhost:8000'
    echo 'Press Ctrl-C to stop'
    echo ''
    cd script-seed
    exec python2 -m SimpleHTTPServer
fi

# No special options provided.
exec "$@"

