#! /bin/bash

a=$1
b=$2

if [ "$a" -lt "$b" ]
    then 
        echo "$a < $b"
        exit 0
fi

if [ "$a" -eq "$b" ]
    then
        echo "$a = $b"
        exit 0
fi

if [  "$a" -gt "$b" ]
    then
        echo "$a > $b"
        exit 0
fi
