#! /bin/bash

echo "-------one"

if [ `netstat -tunlp | grep mysql | wc -l` == "1" ]
    then
        echo "MySQL is running"
else
    echo "MySQL is stop"
    systemctl start mariadb
fi

echo "---two"
if [ `ss -tunlp | grep mysql | wc -l` == "1" ]
    then
        echo "MySQL is running"
else    
    echo "MySQL is stop"
    systemctl start mariadb
fi

echo "---three"
if [ `lsof -i tcp:3306 | wc -l` -gt "0" ]
    then 
        echo "MySQL is running"
else    
    echo "MySQL is stop"
    systemctl start mariadb
fi

echo "---four"
# 开发php脚本的执行
# 先执行该php读取mysql的脚本
# 根据命令的返回值，判断mysql是否运行

php /bjc_shell/example/test_script/mysql_test.php

if [ "$?" -eq 0 ]
    then
        echo "MySQL is running"
else
    echo "MySQL is stop"
    systemctl start mariadb
fi

echo "---five"

python3 /bjc_shell/example/test_script/test_python_mysql.py

if [ "$?" -eq 0 ]
    then
        echo "MySQL is running"
else
    echo "MySQL is stop"
    systemctl start mariadb
fi
