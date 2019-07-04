# SED

shell脚本中不免有对文件的操作，如：

- 修改内容，
- 新增内容，
- 删除内容，

在一个自动化任务中，需要自动化完成这些操作，常用的vim不能满足我们的要求，而sed是专业处理这类问题的，如下我们分别举例说明如何在脚本中自动完成对文件的操作。

我们抽取一段postgresql的配置文件作为待编辑文件(test.conf)：

```conf
#port = 5432                            # (change requires restart)
max_connections = 100                  # (change requires restart)
#superuser_reserved_connections = 3     # (change requires restart)
```

## 修改内容

解注释PostgreSQL监听端口，并修改为5431，可以这么做：`sed -i 's/#port = 5432/port = 5431/' test.conf`

## 删除内容

删除最后一行：`sed -i '3d' test.conf`或`sed -i '/reserved_connections/d' test.conf`

## 新增内容

在匹配行后新增一行内容：`sed -i '/100/a test' test.conf`

## 参考

https://www.gnu.org/software/sed/manual/sed.html
