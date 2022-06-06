<!--
 * @Author       : Guanyue li
 * @Date         : 2022-05-31 15:34:17
 * @LastEditTime : 2022-06-07 01:38:36
 * @Description  : file content
 * @FilePath     : \easy_work_templates\README.md
-->
## Easy Work Templates

+ My report <a href="./Report Template.pptx">template</a> for a quick slide. 
+ A purely linux shadowsock <a href="./Config Shadowsocks.md">configuration</a>: sslocal + proxychains4.
  
## [Scripts in Lunux](./scripts)
+ Template for scripts | <a href="./scripts/00.template.sh">Link</a>.
+ Hello World | <a href="./scripts/01.hello.sh">Link</a>.
+ Display full name | <a href="./scripts/02.full_name.sh">Link</a>.
+ Create files with different name | <a href="./scripts/03.create_3_files.sh">Link</a>.
+ Integer calculation | <a href="./scripts/04.calculation.sh">Link</a>.
+ Fraction calculation | <a href="./scripts/05.cal_fraction.sh">Link</a>.
+ Calculate ${\pi}$ | <a href="./scripts/05.cal_pi.sh">Link</a>.
+ Get file permission | <a href="./scripts/05.file_perm.sh">Link</a>.

## Best Memory Practice
<!--
 * @Author       : Guanyue li
 * @Date         : 2022-06-05 23:17:52
 * @LastEditTime : 2022-06-06 02:22:29
 * @Description  : file content
 * @FilePath     : \easy_work_templates\Bash.md
-->
### [EASY CONDA]()
```bash
wget https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh
bash xxx

# update conda
vim ~/.condarc
#### type them in the .condarc 
channels:
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/pytorch/
ssl_verify: true
#####

# update apt
mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo vim /etc/apt/sources.list
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-security main restricted universe multiverse
```

### [EASY OPENGL]()
```bash
# install required libraries. 
sudo apt-get update
sudo apt-get install cmake pkg-config
sudo apt-get install mesa-utils libglu1-mesa-dev freeglut3-dev mesa-common-dev
sudo apt-get install libglew-dev libglfw3-dev libglm-dev
sudo apt-get install libao-dev libmpg123-dev
# my system need extra libs. 
sudo apt-get install libxinerama-dev libxcursor-dev
# Install GLFW Library
cd /usr/local/lib/
git clone https://github.com/glfw/glfw.git
cd glfw
cmake .
make
sudo make install
# Install GLAD include files   https://glad.dav1d.de/
# hello_triangle.cpp file: https://learnopengl.com/code_viewer_gh.php?code=src/1.getting_started/2.1.hello_triangle/hello_triangle.cpp
# comple the code
g++ hello_triangle.cpp glad.c -ldl -lglfw 
./a.out

# If you encounter error like cannot find iris or swart, please set: 
export MESA_LOADER_DRIVER_OVERRIDE=i965
```


### [EASY BASH](./Bash.md)

This is a reminder for bash. 

```bash
# Prompt to read
read -p "Please Enter Your name (default 30s): " -t 30 named
echo ${named}

# Declare type of the variable. 
sum=100+200+300
echo ${sum}
declare -i sum=100+200+300
echo ${sum}

# delete content
path=$PATH
echo ${path#<pattern>}     # delete the shorted matched pattern from the beginning
echo ${path##<pattern>}     # delete the longest matched pattern from the beginning

# examples:
echo ${MAIL##/*/}   
echo ${path#*:}
echo ${MAIL%/*}    # /var/mail
# replace examples
echo ${path/bin/666}  
echo ${path//bin/666}  # replace all

# variable check
username=""
username=${username-root}
echo $username
username=${username:-root}
echo $username

unset str; var=${str=newvar}
echo "var=${var}, str=${str}"
str="oldvar"; var=${str=newvar}
echo "var=${var}, str=${str}"

# alias
alias lm='ls -al | more'
unalias lm
alias h='history'

# find something;
echo $PATH | cut -d ':' -f 3,5
export | cut -c 10-
last | cut -d ' ' -f 1

# Sort and process
sort
uniq
wc
ls -l /home | tee ~/homelist | more
```