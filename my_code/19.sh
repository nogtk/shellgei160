# bash以外を使うなら
cat qdata/19/cardno | sed -E 's/^[1-9]{4}-[1-9]{4}/xxxx-xxxx/'

# 想定解
## LP: 1> で標準出力をファイル指定して流し込める
##     1<> はファイルを入出力用に利用するオプションなので、ファイルが入力に備えて消去されない挙動になる
printf xxxx-xxxx 1<> qdata/19/cardno

# 別解
## LP: $(<) でファイルの中身をそのまま変数として流し込める
IFS=-;a=($(<qdata/19/cardno));echo xxxx-xxxx-${a[2]}-${a[3]} > cardno
a=$(<qdata/19/cardno);echo xxxx-xxxx-${a:10} > cardno
( read a; echo xxxx-xxxx-${a:10} > qdata/19/cardno )<qdata/19/cardno
