# 回答 (OK)
cat qdata/33/kaibun | gsed -z "s/\n//" | read line; [ $line ==  $(echo $line|rev) ]&& echo "detect kaibun\!"

# 想定解
## LP: grep -o は検索対象が見つかるとそれぞれを独立の行に出力する。これを`.`に対して施すことで1文字ずつ立てに並べることができる
## LP: <(command) はコマンド置換と言われる手法。実行結果をコマンドの引数に渡す手法の一つ
## LP: tac は逆順cat
paste <(grep -o . qdata/33/kaibun) <(grep -o qdata/33/kaibun | tac) | awk '$1!=$2'
