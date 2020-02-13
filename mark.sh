#!/bin/bash

# Usage: LNCLIPATH="<value>" ./mark.sh > HELP.md
$LNCLIPATH/lncli | sed \
    -e 's/\(NAME\|USAGE\|VERSION\):/## \1/' \
    -e 's/COMMANDS:/## COMMANDS\n\|command\|description\|\n\| --- \| --- \|/' \
    -e 's/^   \([A-Za-z-]*\):$/#### \1\n\|command\|description\|\n\| --- \| --- \|/' \
    -e 's/^     \([a-z][a-z]*,\{0,1\} \{0,1\}[a-z]*\) *\(.*\)$/\|\1\|\2|/' \
    -e 's/GLOBAL OPTIONS:/## GLOBAL OPTIONS\n\|option\|description\|\n\| --- \| --- \|/' \
    -e 's/^   --\(.*\)  [ ]*\(.*\)/|--\1|\2|/'

