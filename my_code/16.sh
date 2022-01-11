# 回答 && 想定解
n="XYZ";(for i in {A..C}; do n+=$i;echo $n;done);echo $n

# 別解
## LP: パイプ (|) を使うと、暗黙的にサブシェルを生成する
n="XYZ";for i in {A..C};do n+=$i;echo $n;done|cat;echo $n
