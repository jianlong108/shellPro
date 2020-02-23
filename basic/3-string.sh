#! /bin/sh

#-------------------字符串---------------
your_name="xiaoming"
#拼接字符串 
greeting="hello，boy, ${your_name} !"
echo $your_name $greeting

myname="wangjianlong"
#获取字符串长度
echo ${myname} "长度为" ${#myname}
# echo `expr length $myname`

#提取字符串 截串 并且赋值给新的变量 familyname
familyname=${myname:0:4}
echo ${familyname} #输出 bcde

# ==================字符串截取（不匹配字符）============
filepath="ab/Users/jl/Documents/程序员的自我修养.pdf"

# * 我认为是通配符的意思 ？？?

# ${string#substring} 从变量${string}的开头，删除最短匹配${substing}的子串
# 相当于匹配到了ab/ 将其删除 就成了 Users/jl/Documents/程序员的自我修养.pdf
echo ${filepath#*/} #输出：Users/jl/Documents/程序员的自我修养.pdf

# ${string##substring} 从变量${string}的开头，删除最长匹配${substing}的子串
# 相当于匹配到了ab/Users/jl/Documents/ 将其删除 就成了 程序员的自我修养.pdf
echo ${filepath##*/} #输出：程序员的自我修养.pdf

# filepath 从中提取出文件扩展名 为pdf
echo ${filepath##*.} #输出为：pdf

# ${string%substring} 从变量${string}的结尾，删除最短匹配${substing}的子串
# 相当于匹配到了/程序员的自我修养.pdf 将其删除 就成了 ab/Users/jl/Documents
echo ${filepath%/*} #输出：程序员的自我修养.pdf


# ${string%%substring} 从变量${string}的结尾，删除最长匹配${substing}的子串
# 相当于匹配到了/程序员的自我修养.pdf 将其删除 就成了 ab/Users/jl/Documents
echo ${filepath%/*} #输出：程序员的自我修养.pdf


# 子串替换
# ${string/substring/replacement}	使用${replacement}, 来代替第一个匹配的$substring
# ${string//substring/replacement}	使用${replacement}, 代替所有匹配的$substring
# ${string/#substring/replacement}	如果${string}的前缀匹配${substring}, 那么就用${replacement}来代替匹配到的${substring}
# ${string/%substring/replacement}	如果${string}的后缀匹配${substring}, 那么就用${replacement}来代替匹配到的${substring}
str="apple, tree, apple tree"
echo ${str/apple/APPLE}   # 替换第一次出现的apple # APPLE, tree, apple tree
echo ${str//apple/APPLE}  # 替换所有apple # APPLE, tree, APPLE tree
echo ${str/#apple/APPLE}  # 如果字符串str以apple开头，则用APPLE替换它 # APPLE, tree, apple tree
echo ${str/%apple/APPLE}  # 如果字符串str以apple结尾，则用APPLE替换它(str是以tree结尾的) # apple, tree, apple tree

f="C:\Windows\system32\cmd.exe"
# 将匹配到的\ 全部替换成 /  输出：C:/Windows/system32/cmd.exe
# 注意：f前不要使用$  网上教程有误导
echo ${f//\\/\/}

# ----单引号字符串的限制：------

# 单引号会忽略所有的特殊字符，单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；
# 单引号字串中不能出现单独一个的单引号（对单引号使用转义符后也不行），但可成对出现，作为字符串拼接使用。
# -----------


# 双引号对字符串中出现的$ " ` 和 \进行替换，其他字符原样输出
# 双引号可以出现反引号，转义字符

# ==================反引号=================
# 反引号有命令替换的作用

echo the date is `date`

# who 命令，不指定参数，将显示当前登录的所有用户的信息
# | 管道命令，将who的输出作为输入传递给wc
# wc命令很简单，就是统计文件中的字节数，字数，行数，并将统计结果显示输出
# -c 统计字节数 -l 统计行数 -m统计字符数 -w统计字数。一个字被定义为由空白，跳格，或换行字符分割的字符串

# 反引号可以嵌套使用，但内层的单引号必须加上\进行转义
abc=`echo the number of users is \`who| wc -l\``
echo $abc

# 原样输出字符串 不进行转义或取变量（用单引号）
teststr="haha"
# 使用变量
echo '$teststr\'
echo "$teststr"


#查找子字符串
#输出：3，这个语句的意思是：找出字母i在这名话中的位置，要在linux下运行，mac下会报错
#echo `expr index "$testStr" c`

# 查找字符 i 或 o 的位置(哪个字母先出现就计算哪个)：
string="runoob is a great site"
targetstr="io"

# Linux环境下
# echo `expr index "$string" io`  # 输出 4

# Mac os 环境下
echo string | sed -n "s/[$targetstr].*//p" | wc -c

# 两种方式均可
# echo string | sed -n "s/[io].*//p" | wc -c

name="jack"

# 注意：判断字符串的时候最好使用双中括号，因为有时使用单中括号会产生错误，应该尽量避免该错误
# z == zero
if [[ -z $name ]] ;then
    echo name is empty
else 
    echo name is not empty
fi

# 若字符串的长度不为0，则为真，即测试表达式成立。
if [[ -n $name ]] ;then
    echo name is empty
else 
    echo name is not empty
fi

# $ 检测字符串是否为空，不为空返回 true。
if [ $name ]
then
   echo "$name : 字符串不为空"
else
   echo "$name : 字符串为空"
fi