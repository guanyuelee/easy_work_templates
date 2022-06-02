<!--
 * @Author       : Guanyue li
 * @Date         : 2022-06-03 02:06:52
 * @LastEditTime : 2022-06-03 02:35:44
 * @Description  : file content
 * @FilePath     : \easy_work_templates\Config Shadowsocks.md
-->
# Config VPS to bypass the firewall
This article is nothing but a remainder about my installation of shadowsocks on ubuntu. What makes things difficult are:  
+ I have limited privilege as a sub-user. 
+ The installation is purely on command. 

## Git Clone Shadowsocks

```bash
# Master branch should be specified, since the default branch `rm` is removed
git clone https://github.com/shadowsocks/shadowsocks.git@master
cd shadowsocks
python setup.py install 
# It will automatically install `sslocal` and `ssserver` in your python (anaconda3 for me) environment. You can use `whereis` to find out the path. 
whereis sslocal
```

## sslocal configuration
```bash
# config your ssl network 
vim $HOME/shadowsocks.json

# Configuration like: 
{
    "server": "xxxxxx",
    "server_port": 1080,
    "password": "xxx",
    "method": "xxx",
    "plugin": "xxx",
    "plugin_opts": "xxx",
    "remarks": "xx",
    "timeout": 20000
}

# For user with privilege, it should work fine when they type: 
sslocal -c <config-file> -d start
# For user without privilege (my case), extra configuration is needed. 
sslocal --log-file=$HOME/var/log/shadowsocks.log --pid-file=$HOME/var/run/shadowsocks.pid -c <config-file> -d start
```

## proxychain4
```bash
mkdir $HOME/.proxychains
vim $HOME/.proxychains/proxychains.conf
# See which port the sslocal is listening: 
lsof -i:1080

# proxychains configuration
[ProxyList]
socks5 127.0.0.1 1080   # The port should be the same with the sslocal port
# That's all

proxychains4 curl google.com

```
