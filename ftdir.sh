#!/bin/bash
USAGE="usage: $0 [-h] dir
Creates a directory that will work as a repository for 42 codes.

    -h  Show this message and exit"

if test "$1" = "-h"; then
    echo "$USAGE"
    exit 0
fi

DIR=$(pwd)

if [[ $1 != "" ]]; then
    test -d $1 || mkdir $1 || exit
    DIR="$1"
fi

echo ".gitignore
ignore/
**/main.c
**/*out" > "$DIR/.gitignore"
