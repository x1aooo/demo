#! /bin/bash

# 逻辑条件测试

read -p "please input a char:" var1

[ "$var1" -eq "1" ] && {
    echo $var1
    exit 0
}

[ "$var2" = "2" ] && {
    echo $var1
    exit 0
}

[ "$var1" != "1" -a "$var1" != "2" ] && {
    echo "Script error,must enter '1' or '2'"
    exit 1
}
