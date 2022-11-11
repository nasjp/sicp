#!/bin/bash

srcs=*.scm

for src in ${srcs}; do
	if [[ ${src} != *$1* ]]; then
		continue
	fi
	printf "%20s : " $src
	guile -s $src 2>/dev/null
	echo
done
