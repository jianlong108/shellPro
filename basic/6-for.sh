#! /bin/bash

# https://www.jb51.net/article/142274.htm

# 第一类：数字性循环

# (i * 3) + 1
for ((i=1;i<=10;i++)); 
do  
    echo $(expr $i \* 3 + 1); 
done
  
for i in $(seq 1 10) 
do  
    echo $(expr $i \* 3 + 1); 
done

  
for i in {1..10} 
do 
    echo $(expr $i \* 3 + 1); 
done


awk 'BEGIN{for(i=1; i<=10; i++) print i}'

# 第二类：字符性循环
  
for i in `ls`; 
do  
    echo $i is file name\! ; 
done
  
for i in $* ; 
do 
    echo $i is input chart\! ; 
done
  
for i in f1 f2 f3 ; 
do 
    echo $i is appoint ; 
done

  
list="rootfs usr data data2" 
for i in $list; 
do 
    echo $i is appoint ; 
done

# 第三类：路径查找

  
for file in /proc/*; 
do 
    echo $file is file path \! ; 
done
  
for file in $(ls *.sh) 
do 
    echo $file is file path \! ; 
done