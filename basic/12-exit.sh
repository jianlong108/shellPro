#! /bin/bash

echo "hello world"

sh basic/13-file.sh
# sh 13-file.sh
: << !
其实每条命令执行完成后，都要返回一个执行状态的！

如果执行成功，就返回 0

如果执行不超过，返回非零！

举例应用：用在shell脚本中做真假判断，

如果前一句执行OK，那shell接着执行下一条命令；

如果前面错误，返回值非零，那直接退出shell；

echo $? 即可得出状态码

!

# echo $?
# status=`echo $?`
if [ $? != 0 ];then
    echo "出现异常 退出执行"
    exit 1
fi

echo "go on"

#其实每条命令执行完成后，都要返回一个执行状态的！

# 如果执行成功，就返回 0

# 如果执行不超过，返回非零！

# 举例应用：用在shell脚本中做真假判断，

# 如果前一句执行OK，那shell接着执行下一条命令；

# 如果前面错误，返回值非零，那直接退出shell；

# 输入echo $?即可得出状态码
