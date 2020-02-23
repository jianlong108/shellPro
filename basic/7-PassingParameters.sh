#！/bin/sh


#脚本内获取参数的格式为：$n。n 代表一个数字，1 为执行脚本的第一个参数，2 为执行脚本的第二个参数...

echo "Shell 传递参数实例！";
echo "第一个参数为：$1";
echo "第二个参数为：$2";
echo "第三个参数为：$3";

echo "参数个数为：$#";
echo "传递的参数作为一个字符串显示：$*";

:<<! 控制台执行
JLdeMacBook-Pro:shell jl$ chmod +x "/Users/jl/workSpace/shell/5-PassingParameters.sh"
JLdeMacBook-Pro:shell jl$ /Users/jl/workSpace/shell/5-PassingParameters.sh a b c
Shell 传递参数实例！
第一个参数为：a
第二个参数为：b
第三个参数为：c
参数个数为：3
传递的参数作为一个字符串显示：a b c
!

:<<！
$* 与 $@ 区别：

相同点：都是引用所有参数。
不同点：只有在双引号中体现出来。
    假设在脚本运行时写了三个参数 1、2、3，，则 " * " 等价于 "1 2 3"（传递了一个参数），
    而 "@" 等价于 "1" "2" "3"（传递了三个参数）。
！

echo "-- \$* 演示 ---"
for i in "$*"; do
    echo $i
done
echo "-- \$* end ---"

echo "-- \$@ 演示 ---"
for i in "$@"; do
    echo $i
done