# python3.7.1

本shell的主要作用是基于CentOS 7安装python3.7.1的一键安装脚本
    
    wget -N --no-check-certificate https://raw.githubusercontent.com/evon16888/python3.7.1/master/bin.sh && bash bin.sh

当然也包括相关的包也安装好了，有Ccxt、Pandas、bitfinex-tencars（主要用于采集历史记录）

这个是双python模式，即不影响原来的python2.7,如果我们要执行文件的时候想用python3或安装pip就参考下面
    python test.py
    pip3 install xxxxx
    
