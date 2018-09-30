#!/usr/bin/env bash

# Tests for the seed scripts!
#
# The testing philosophy is pretty straight-forward. We'll call the script with
# Bash and capture the output, then compare it against an expected value.
# For simple seed scripts, this should be enough to prevent us from breaking
# things if we do some refactoring.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
SEEDS=$(ls $DIR/seeds/*.*)

EXITCODE=0

for SEED in $SEEDS; do

    # Test support for -h
    RESULT=$(${SEED} -h)
    if [ "$(echo $RESULT | grep -i -c "usage")" -eq 0 ]; then
        echo "FAIL: [$SEED -h] expected [usage] but got [$RESULT]"
        EXITCODE=1
    fi

    # Ensure no args works
    RESULT=$(${SEED})
    if [ "$(echo $RESULT | grep -c "You planted a")" -eq 0 ]; then
        echo "FAIL: [$SEED] expected [You planted a] but got [$RESULT]"
        EXITCODE=1
    fi

done

exit $EXITCODE
