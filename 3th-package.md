# Package

shell中不能直接从一个shell脚本文件中以一个模块的方式引用另一个shell脚本中定义的函数，但这在其他语言中是很常见的功能，比如golang中使用`import package_name`，nodejs中使用`const pkg = require('pkg')`，如何在shell中模拟这种行为呢？

使用`.`或者`source`执行的脚本会在当前脚本的上下文中声明脚本中定义的函数或者变量，缺点是两个shell脚本中不能定义名称相同的变量或函数名。

例子

a.sh

```sh
#!/bin/sh

age=18

getName()
{
    name=$1
    echo "${name}"
}
```

b.sh

```sh
#!/bin/sh

. ./a.sh

person="cheerfun"
getName ${person}

echo "$(getName ${person})'s age is ${age}"
```

在b.sh中引用了a.sh定义的函数和变量，程序最终输出的内容是：`cheerfun's age is 18`
