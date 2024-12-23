#!/bin/bash -xv
#! SPDX-FileCopyrightText: 2024 Kosuke Abe
#! SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

out=$(echo -e "太郎\n\n" | ./omikuji_simulator)
[ "$?" = 0 ] || ng "$LINENO"

# 必要な出力を確認
echo "${out}" | grep -Eq "凶|末吉|半吉|吉|大吉" || ng "$LINENO"
echo "${out}" | grep -Eq "太郎さんの運勢は..." || ng "$LINENO"

# 異常入力テスト (名前が空の場合)
out=$(echo -e "\n\n" | ./omikuji_simulator 2>&1)
[ "$?" = 0 ] || ng "$LINENO"
echo "${out}" | grep -q "匿名さんの運勢は" || ng "$LINENO"

# プログラム中にエラーが発生していないことを確認
echo "${out}" | grep -Eq "Traceback|SyntaxError|EOFError" && ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

