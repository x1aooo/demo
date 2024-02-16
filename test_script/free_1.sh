#! /bin/bash

FreeMem=`free -m | awk 'NR==2 {print $NF}'`
CHARS="Remaining available memory:$FreeMem"

if [ "$FreeMem" -lt "2000" ]
    then
        echo $CHARS |tee /tmp/messages.txt
        # mail -s "主题" 收件人 < 
        #maix -s "`date +%F-%T`$CHARS" 18568539732@163.com < /tmp/messages.txt
        echo "Insufficient memory,urgent maintenance of server."
fi
