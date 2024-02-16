#! /bin/bash

if expr "$1" ":" ".*\.sh" &> /dev/null
    then
        echo "This is a SHELL script development file."
else
    echo "This is not a SHELL script development file."
fi

