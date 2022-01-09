#!/bin/bash

# 回答
cat "$1" 2> /dev/null
echo "$?" 1> /dev/null

# 想定解
## LP: テストコマンド ([) と -e でファイルの有無を調べることができる
[ -e unfile ] || touch unfile

# 別解
## LP: unfile が存在すれば cat < unfile が実行される。unfile が存在しなければ cat > unfile が実行される。
##     よって意図する挙動となる。 
cat <> unfile
