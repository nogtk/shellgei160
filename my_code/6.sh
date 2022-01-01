# 想定解
## LP: tac で出力を逆順にできる
seq 5 | awk '{for(i=1;i<$1;i++) printf(" ");print "x"}' | tac
# 別解
## LP: NRはawkで定義されている行番号
##     seq 5 -1 1 で逆順 seq
seq 5 | awk '{a++;for(i=5;i>a;i--){printf " "};print "x"}'
seq 5 | awk '{for(i=5;i>NR;i--){printf " "};print "x"}'
seq 5 -1 1 | awk '{for(i=1;i<$1;i++){printf " "};print "x"}'
## LP: `%*s` の * に数字を入れるとその文字列長に調整して出力できる
printf "%*s\n" 5 x 4 x 3 x 2 x 1 x
## 10^x 乗を出力して、1を削除、0を空文字に置換している
## LP: tr コマンドで1文字単位で置換、削除ができる
seq 4 -1 0 | awk '{print 10^$1"x"}' | tr -d 1 | tr 0 ''
