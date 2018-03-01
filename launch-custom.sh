#!/bin/bash

export IDEA_PROPERTIES=./idea.properties

IDEA_DIR=$1
BIN=$1/bin/idea64.exe
if [[ ! -e "$BIN" ]]; then
    echo "Could not find Intellij binary at $BIN"
    echo "Please specify path to install dir as first arg"
    exit 1
fi

"$BIN"
