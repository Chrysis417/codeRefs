#!/bin/bash
# set proxy for wsl2
host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
http_port="10809"
git config --global http.proxy "http://$host_ip:$http_port"
git config --global https.proxy "http://$host_ip:$http_port"


# other settings
socks5_port="10808"
export http_proxy="http://$host_ip:$http_port"
export https_proxy="http://$host_ip:$http_port"
git config --global http.sslVerify false
git config --global http.postBuffer 1048576000
git config --global http.proxy 'socks5://$host_ip:$sock5_port'
git config --global https.proxy 'socks5://$host_ip:$socks5_port'