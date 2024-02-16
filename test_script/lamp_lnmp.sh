#! /bin/bash

# 判断脚本目录是否存在

path=/bjc_shell/example/test_script/

# 条件判断
# 开发脚本，真，假2个情况，优先处理错误的逻辑情况，因为错误的情况最容易处理

[ ! -d "$path" ] && mkdir $path -p

# 开发脚本正常逻辑

cat <<END
    1.[install lamp]
    2.[install lnmp]
    3.[exit]
    Please enter the function you need
END

read num 

# 根据num变量进行逻辑处理
expr $num + 1 &> /dev/null

# 判断上条命令的结果
# 限制用户输入的必须是数字
[ $? -ne 0 ] && {
    echo "Please enter the number 1,2,3"
    exit 1
}

# 对输入的数字为1，2，3进行判断
# 开发选择1的情况，安装lamp
[ "$num" -eq "1" ] && {
    echo "Installing lamp,please wait"
    sleep 2;

    # 执行lamp.sh脚本
    # 对文件权限进行判断
    [ -x "$path/lamp.sh" ] || {
        echo "This file does not have executable permissions."
        exit 1
    }
    $path/lamp.sh
    exit $?
}

# 开发选择2的情况，安装lamp
[ "$num" -eq "2" ] && {
    echo "Installing lnmp,please wait."
    sleep 2;
    
    [ -x "$path/lnmp.sh" ] || {
        echo "This file does not have executable permissions."
        exit 1
    }
    $path/lnmp.sh
    exit $?
}

# 开发选择3的情况，退出
[ "$num" -eq "3" ] && {
    echo "exited"
    exit 3
}

# 限制用户输入的是1，2，3
# [ [] ]支持正则表达式
[[ ! "$num" =~ [1-3] ]] && {
    echo "Must enter 1,2,3"
    exit 4
}
