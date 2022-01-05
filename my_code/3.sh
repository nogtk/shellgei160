# rename コマンドを使った解法
## LP: s/^/hoge/ で行頭に対する置換ができる
##     s/$/fuga  だと行末にできる
ls -U | xargs -P2 rename 's/^/0000000/;s/0*([0-9]{7})/$1 /'

# 別解
## seq を使う解法
### LP: seq `-w` で頭を0埋めした数を出力する
seq -w 1000000 | awk '{print $1,$1}' | sed 's/^0*/mv ' | xargs -P2 -I@ sh -c @
