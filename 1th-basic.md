# Basic

1、变量与赋值

sh
[set/unset] -option name=[value]

bash
[alias/declare/typeset/export/readonly/local] name=[value]

前面的修饰符和value都可以不写，如果value不指定，那么变量初始化为空字符串。前面的修饰符：

- alias一般用于设置命令别名
- declare/typeset，声明变量时可以指定选项，如 `declare -r name=cheerfun`，设置name为只读，如`declare -x NAME=cheerfun`将设置NAME环境变量，如`declare -i age=14`，-i选项可以声明数值或字符串
- export，声明环境变量
- readonly，只读变量，类似于其他语言中const
- local，局部变量，比如只在函数作用域中的变量

2、控制

if

```sh
if condition
then
    echo massage
elif condition
then
    echo message
else
    echo message
fi
```

for

```sh
for((i=0;i<10;i++));
do
    echo $i
done

for VAR in $LIST
do
    echo $VAR
done
```

3、引用（quoting）

引用的主要作用是解除shell对特殊字符或关键字的解析，三种字符：单引号、双引号和backslash。

4、函数

```sh
function name()
{
    # code
}
```

函数调用就像调用命令，参数可以像内建命令那样传递，函数定义中，不需要形参，函数内部使用$n来引用传递的参数，返回值可以在函数执行后，通过`$?`来使用：

```sh
#!/bin/bash
function learnGolang()
{
    echo "learn golang in $1"

    return 12
}

learnGolang "fourty five minutes"

echo "the result of func is $?"
```
