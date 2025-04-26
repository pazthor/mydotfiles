#!/usr/bin/env bash

set -euo pipefail

source "$DOTLY_PATH/scripts/core/_main.sh"

##? copia  db port to clipboard
##?
##? Usage:
##?    port
docs::parse "$@"


## put in the folder with ddev 
## DDeV must be start up
## pbcopy install 

ddev describe | grep 'db ' -A 2 | grep 'Host:' | tr -d '│' | sed 's/^ *//; s/ *$//' |  grep -oP '(?<=:)\d+(?=\s)' | pbcopy
