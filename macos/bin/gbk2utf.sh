#!/bin/bash

files=`ls *.cpp *.h`

for fname in $files; do
	iconv -f gbk -t UTF-8 $fname > ${fname}".bak"
done
