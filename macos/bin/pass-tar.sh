#!/bin/bash

##################################################
# Usage:
#	Compress:
#		pass-tar.sh -p password file-name
#	Decompress:
#		pass-tar.sh -d -p password file-name
##################################################

is_decompress=0
fname=$1
passwd=$2
target=""


tar -zcvf - ${fname}"|openssl des3 -salt -k "${passwd}" | dd of="${fname}".des3"
