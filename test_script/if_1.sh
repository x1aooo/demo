#! /bin/bash

if [ -f /etc/hosts ] 
    then
        echo "exist"
fi

if [[ -f /etc/hosts ]];then
    echo "exist"
fi

if test -f /etc/hosts ;then
    echo "exist"
fi
