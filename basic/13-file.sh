#! /bin/bash

currentpath=`pwd`
echo $currentpath

curPath=`PWD`
echo $curPath


# 0	命令成功结束
# 1	通用未知错误
# 2	误用shell命令
# 126	命令不可执行
# 127	没找到命令
# 128	无效退出参数
# 128+x	Linux信号x的严重错误
# 130	命令通过Ctrl+C终止
# 255	退出状态码越界

exit 1