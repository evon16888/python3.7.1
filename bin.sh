#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

yum -y install zlib\*
yum install libffi-devel -y
yum -y groupinstall "Development tools"
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel
wget -c https://www.python.org/ftp/python/3.7.1/Python-3.7.1.tgz
tar -xvzf Python-3.7.1.tgz
cd Python-3.7.1
yum install openssl-devel -y
rpm -aq|grep openssl
./configure --prefix=/usr/python37 --with-ssl
make
make install
echo "python 3.7.1安装完毕"

ln -s /usr/python37/bin/pip3 /usr/bin/pip3
ln -s /usr/python37/bin/python3 /usr/bin/python3
echo "增加软链接完成"

# 相关包安装
echo "开始安装需要的扩展包"
pip3 install --upgrade pip
echo "更新pip完毕"
pip3 install pandas
pip3 install ccxt
pip3 install bitfinex-tencars
echo "安装成功"
