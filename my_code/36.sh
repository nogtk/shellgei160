# 想定解
cat qdata/36/message.txt | sed 's/)(/)\n(/g' | ggrep -P '^(\(\g<1>\)|[^()]+)$' | tr -d '()'

# 別解
## LP: gsub は置換した回数をカウントする
cat qdata/36/message.txt | sed -E 's/\)\(/)\n(/g' | awk '{print gsub("\\(",""), gsub("\\)",""), $0}' | awk '$1==$2{print $3}' | xargs
