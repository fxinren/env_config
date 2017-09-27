#!/bin/bash

##################################################
# Usage:
#	Compress:
#		pass-tar.sh -p password file-name
#	Decompress:
#		pass-tar.sh -d -p password file-name
##################################################

is_decompress=0
fname=""
target=""
passwd=""


if [ $is_decrompress -eq 0 ]; then
	#tar -zcvf - pma|openssl des3 -salt -k password | dd of=pma.des3
	tar -zcvf - ${fname}"|openssl des3 -salt -k "${passwd}" | dd of="${target}".des3"
else
	#dd if=pma.des3 |openssl des3 -d -k password|tar zxf -
	dd if=pma.des3 |openssl des3 -d -k password|tar zxf -
fi


