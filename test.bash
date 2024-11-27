#!/bin/bash
#SPDX-FileCopyrightText: 2024 Kosuke Abe

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0


out=$(echo | ./omikuzi)
[ "$?" = 0 ] || ng "$LINENO"

echo "${out}" | grep -q "おみくじの結果は" || ng "$LINENO"

echo "${out}" | grep -Eq "凶|末吉|半吉|吉|大吉" || ng "$LINENO"


### STRANGE INPUT ###
out=$(echo あ | ./omikuzi)
[ "$?" = 0 ]      || ng "$LINENO"

echo "${out}" | grep -Eq "Tracebook|SyntaxError" && ng "$LINENO"

[ "${res}" = 0 ] && echo OK

exit $res



