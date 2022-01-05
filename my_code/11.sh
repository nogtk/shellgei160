# 回答 (NG)
cat qdata/11/gijiroku.txt | gsed -z -r 's/^すず\n(.*)/鈴木:\1/' | gsed -z -r 's/^さと\n(.*)/佐藤:\1/' | gsed -z -r 's/^やま\n(.*)/山田:\1/'
# 想定解
## LP: xargs -n2 で2つずつ echoするので、2行を空白区切りで横に並べることができる
cat qdata/11/gijiroku.txt | xargs -n2 | sed 's/^すず/鈴木/;s/^さと/佐藤/;s/^やま/山田/;s/ /:/;s/$/\n/'
