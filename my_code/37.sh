# 回答 (OK)
cat qdata/37/diarydiary.txt | ggrep -ozE '(.*)\1'

# 想定解
cat qdata/37/diarydiary.txt | tr -d '\n' | ggrep -oE '(.+)\1'

# 別解
cat qdata/37/diarydiary.txt | gsed -rz 's/(.+)(\n*)\1/@\1\1@/g' | grep -o '@[^@]*@' | tr -d '@'
