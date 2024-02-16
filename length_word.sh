
#! /bin/bash

for str1 in This is a SHELL script development file.
    do 
        if [ `expr length $str1` -lt 5 ]
            then
                echo $str1
        fi
done
