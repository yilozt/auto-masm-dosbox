# auto masm dosbox

一键完成`dosbox`配置masm汇编语言环境。

在 DOSBOX 里搭建的汇编语言环境，顺手写了快速挂载目录和编译asm源文件的脚本。

虽然只能编译一个asm文件，但已经满足上汇编课的需要了。

原理只是在dosbox的配置文件的`[auto exec]`里添加一些启动命令而已。

# 安装

`install`脚本一键配置，自动完成masm、debug的配置。

```
git clone https://www.github.com/PID000/auto-masm-dosbox
cd auto-masm-dosbox
chmox +x ./install && ./install
```

masm、edit等工具在masm文件夹下，可以将这个文件夹复制出来，自己配置。



# 使用

>  绝对路径或相对路径应该都没有问题。

编译一个 asm 源文件：

```
auto-masm [path/to/asm/file]
```

![](demos/auto-masm-1.gif)

将一个目录挂载到dosbox：

```
auto-masm /path/to/dir
```

![](demos/auto-masm-2.gif)

# 删除

将`~/.auto-masm`文件夹删掉，然后将`~/.dosbox/`文件夹里之前的备份覆盖掉`dosbox-{version}.conf`。

记得检查shell的配置文件(~/.bashrc或者~/.zshrc)，删掉path环境变量里，auto-masm所在的文件夹。
