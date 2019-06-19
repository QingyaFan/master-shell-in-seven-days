# Debug

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
