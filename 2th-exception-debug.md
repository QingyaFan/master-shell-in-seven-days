# Exception & Debug

## 设置脚本行为

输出执行的命令
set -x

有错误直接退出
set -e

有使用未定义的变量失败
set -u

给输出的命令带上行号
export PS4='+${BASH_SOURCE}:${LINENO}:${FUNCNAME[0]}: '

调试部份的脚本
只会执行`set -x`和`set +x`包裹的代码

## try/catch的替代

shell中并没有try/catch，但我们可以通过`||`来方便的实现相似的行为。

```sh
{
    # code in try
} || {
    # code in catch
}
```

当然，如果try或catch中是单条命令，中括号可以省略，成为`command1 || command2`

## 有相互依赖的命令的顺序执行

当然我们可以通过if来控制程序执行流程，但会稍微麻烦一些，比如：

```sh
exitCode=$(command1)
if [ "$exitCode" -eq 1 ]
then
    command2
fi
```

如果使用`&&`，可以简化为`command1 && command2`。
