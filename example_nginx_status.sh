#! /bin/bash

# 版本变量

CheckUrl(){
    # 相当于一个计时器
    timeout=5
    fails=0
    success=0

    # 循环的检测，循环执行命令
    while true
        do
            wget --timeout=${timeout} --tries=1 http://baidu.com/ -q -O /dev/null

            # echo $?
            # if的条件参数 -ne 是不等于的意思
            if [ $? -ne 0 ]
                then 
                    let fails+=1 # 失败次数加1
            else
                let success+=1
            fi

            # 判断当前成功次数大于等于1的时候，就可以得出该网站访问是正确的
            # -ge 大于等于的意思
            if [ ${success} -ge 1 ]
                then
                    echo "恭喜你，该网站正在运行"
                    # 返回一个状态码，0
                    exit 0
            fi

            # 等错误次数大于2，就警告，发送邮件
            if [ ${fails} -ge 2]
                then
                    echo ""该网站正在维护
                    exit 2
            fi
    done

}

CheckUrl
