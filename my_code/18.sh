# 想定解
## 読解: declare で宣言、read {a..g} で /etc/passwd の:区切りの値を各変数に入れる, その結果に対して for文と連想配列へのアクセスでsという変数に入れる。文字列長は ${#文字列}で取り出せる。
declare -A x ; IFS=: ; while read {a..g}; do x[$g]+=. ; done < /etc/passwd; for s in ${!x[@]} ; do echo $s ${#x[$s]}; done; unset x
