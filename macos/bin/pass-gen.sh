#!/bin/bash


#使用SHA来哈希日期，输出头32个字节
#date +%s | sha256sum | base64 | head -c 32 ; echo

#/dev/urandom，只输出字符，结果取头32个
#< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;

openssl rand -base64 32
