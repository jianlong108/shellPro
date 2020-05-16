#! /bin/sh

currentPath=`PWD`
echo $currentPath
# list=`ls -al`
# echo $list

#如果文件夹不存在，创建文件夹
testDir="${currentPath}/Test"
if [ ! -d $testDir ]; then
  echo "不存在文件夹 $testDir 去创建"
  mkdir $testDir
fi

if [ -d $testDir ]; then
  echo '存在文件夹 $testDir'
fi

# 判断文件是否存在
testTxt="${currentPath}/test.txt"
if [ -f $testTxt ]; then
    echo "$testTxt 是文件"
fi

# -n 判断一个变量是否有值
if [ ! -n "$var" ]; then
  echo "$var is empty"
  exit 0
fi