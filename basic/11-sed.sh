#! /bin/bash

# https://www.jianshu.com/p/9aaa472d567e

# sed在处理文本时是逐行读取文件内容，读到匹配的行就根据指令做操作，不匹配就跳过。

# sed是Linux下一款功能强大的非交互流式文本编辑器，可以对文本文件进行增、删、改、查等操作
# 支持按行、按字段、按正则匹配文本内容，灵活方便，特别适合于大文件的编辑。

# 替换字符串

echo 'caesar is king' | sed 's/caesar/pig/'       
# 输出结果： pig is king

# tip: echo的-e选项是输出字符串会经过转义,\n表示到下一行（linux）

# sed是每一行，每一行的流式操作的。
echo -e 'caesar is king, caesar\ncaesar is a girl' | sed 's/caesar/pig/'       
# 输出结果： pig is king, caesar
#           pig is a girl

# 可以看到sed只是把每一行的第一个caesar替换了， 不会替换所有的caesar, 
# 替换每一行的所有caesar，需要加g选项
echo -e 'caesar is king, caesar\ncaesar is a girl' | sed 's/caesar/pig/g'       
# 输出结果： pig is king, pig
#           pig is a girl

#=================================（正则替换）==============
# 当然这里字符串的替换是可以使用正则表达式的， 一个例子如下：

# 正则表示式 ^c[a-z]*  匹配c开头的
echo -e 'caesar is king\ncurrent' | sed 's/^c[a-z]*/pig/'       
# 输出结果： pig is king
#           pig


# 这里-r选项是--regexp-extended，也就是正则扩展的意思， 不然sed的正则是不会识别（）+这些符号的，这里一步步解释：
# 1:^[+-]代表以+或者-号开头;
# 2:空格就原样填写就行；
# 3:\(.*\)表示匹配任何单词加圆括号的东西，如(void), (unsigned);
# 4:(mc_[0-9a-zA-Z_]*)就是匹配方法名了；
# 5:([\;\:].*)?表示各种方法后的符号， 有： 有； 也可以什么都没有;
# 6:\1表示将之前匹配项1， 也就是(mc_[0-9a-zA-Z_]*)作为替换项进行替换


# sed -r 有点弄不懂
sed -r 's/root/shark/' mypassword
# echo -e '- (void)mc_initWebView:(NSString)3\n+ (void)mc_init;' | sed -r 's/^[-+] \(.*\)(mc_[0-9a-zA-Z_]*)([\;\:].*)?/\1/'     
# 输出结果： mc_initWebView
#           mc_init
