# 想定解
## LP `\2 はあとから都合よく決定できる。` 例えば、([^あ-ん]*)\2 とすることで、\2 は漢字以降の送り仮名ということが決まるので、\1は漢字のかな読みを表すといった具合
cat qdata/34/furigana.txt | gsed -E 's/^(.*)(.*) ([^あ-ん]*)\2/\3（\1）\2/'

# 別解
ruby -ne 'a=$_.match(/^(.*)(.*) (\p{Han}*)(\2)$/);puts "#{a[3]} (#{a[1]}) #{a[2]}"' qdata/34/furigana.txt