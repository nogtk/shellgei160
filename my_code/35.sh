# 回答 (NG)
cat qdata/35/speech.txt | ruby -ne 'a=$_.match(/^(.*)([\p{Katakana}]{5,})/);pp a[1]'

# 想定解
cat qdata/35/speech.txt | ggrep -oP '^.*?[ア-ン]{4}(?=[ア-ン])' | awk '{print length($1), $1}'
