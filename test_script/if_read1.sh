#! /bin/bash 

a=$1
b=$2

if [ "$a" -lt "$b" ]
    then
        echo "$a < $b"
elif [ "$a" -gt "$b" ]
    then 
        echo "$a > $b"
else [ "$a" -eq "$b" ]
        echo "$a = $b"
fi
        
