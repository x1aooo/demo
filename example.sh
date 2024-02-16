#! /bin/bash

# 脚本开发

# 告诉用户，你应该输入什么的一个简单提示函数而且
print_usage(){
    printf "Please enter an integer\n"
    # 给脚本的执行结果，赋予状态码，退出码
    exit 1
}

# 接受用户输入的命令，-p参数后面写，给用户看到的提示信息| 类似python的input函数
# read -p “提示信息” 接受用户输入的变量

read -p "Please input your number:" firstnum

# 进行对用户输入判断if语句
# 注意语句格式
# 限制用户必须输入纯数字
# 中括号里面前后必须有一个空格，固定语法

if [ -n  "`echo ${firstnum} | sed 's/[0-9]//g'`" ]
    then
    print_usage
fi
# 上述代码是对用户输入进行判断
# 希望用户输入3+5

# 对运算符进行输入
read -p "Please input your operator:" operator

# 对运算符进行判断
if [ "${operator}" != "+" ] && [ "${operator}" != "-" ] && [ "${operator}" != "*" ] && [ "${operator}" != "/" ]
    then
      echo "只允许输入+、-、*、/"
      exit 2
fi

#对第二个变量进行处理
read -p "Please input second secondnum:" secondnum

if [ -n  "`echo ${secondnum} | sed 's/[0-9]//g'`" ]
    then
        print_usage
fi

#最后进行数值计算
echo "${firstnum}${operator}${secondnum}结果是：$((${firstnum}${operator}${secondnum}))"
