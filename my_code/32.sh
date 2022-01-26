# 回答 (OK / ruby)
cat qdata/32/kaibun.txt | ruby -ne '$_.chomp!; if $_==$_.reverse;puts $_;end'
# 回答 (OK / bash)
for i in $(<qdata/32/kaibun.txt);do [ $i == $(echo $i|rev) ]&&echo $i;done

# 想定解
## LP: -f で標準入力からの読み込み、-x は行全体がマッチしないとマッチしたことにしないということを表すオプション
rev kaibun.txt | grep -xf - kaibun.txt
