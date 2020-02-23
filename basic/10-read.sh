#! /bin/bash

# read 命令接收键盘的输入，标准输入（standard input）

#1.基本输入
    #1.1 "请输入一个英文名字" 提示用户的信息 变量NAME接收用户的输入
# read -p "请输入一个英文名字:" NAME
# echo "你刚才输入的名字是 ${NAME}"
    # 在上面read后面的变量只有name一个，也可以有多个，这时如果输入多个数据，则第一个数据给第一个变量，第二个数据给第二个变量。
    # 如果输入数据个数过多，则最后剩下的所有值都给最后一个变量，如果太少输入不会结束。


    # 1.2两种方式是等价的
# echo -n "Enter your name:"           #参数-n的作用是不换行，echo默认是换行 
# read  name                           #从键盘输入 
# echo "hello $name, welcome to my program"   
# exit 0                               #退出shell程序。

#2.在read命令行中也可以不指定变量
    # 如果不指定变量，那么read命令会将接收到的数据放置在环境变量REPLY中

# read -p "Enter a number: " 
# echo $REPLY

#4. 计时输入
# if read -t 5 -p "please enter your name:" name 
# then 
#     echo "hello $name, welcome to my script" 
# else 
#     echo "sorry,too slow" 
# fi 

# 5.设置计数输入的字符
    # 当输入的字符数目达到预定数目时，自动退出，并将输入的数据赋值给变量。 

    # -n 后面跟数字1.表示read命令只接受一个字符就退出。
    # 只要按下一个字符进行回答，read命令立即接受输入并将其传给变量。无需按回车键。 
# read -n1 -p "Do you want to continue [Y/N]? " answer 
# case $answer in 
#     Y|y) 
#         echo "fine ,continue";; 
#     N|n) 
#         echo "ok,good bye";; 
#     *) 
#     echo "error choice";; 
# esac

# 6.默读（输入不显示在监视器上）

    # 有时不希望输入的数据显示在监视器上。
    # 典型的例子就是输入密码，当然还有很多其他需要隐藏的数据。
    # -s 选项能够使read命令中输入的数据不显示在监视器上（实际上，数据是显示的，只是read命令将文本颜色设置成与背景相同的颜色）。

# read  -s  -p "Enter your password: " pass 
# echo "your password is $pass" 


# 7.读文件

    # 每次调用read命令都会读取文件中的"一行"文本。
    # 当文件没有可读的行时，read命令将以非零状态退出。
    # 读取文件的关键是如何将文本中的数据传送给read命令。
    # 最常用的方法是对文件使用cat命令并通过管道将结果直接传送给包含read命令的while命令 。

# localStr=$(cd $(dirname $0); pwd) 
localStr=$(pwd)
echo $localStr
txtPath=${localStr}/test.txt
echo $txtPath
count=1

cat $txtPath | while read line        #cat 命令的输出作为read命令的输入,read读到的值放在line中 
do 
   echo "$count:$line" 
   count=$(($count + 1))
done
