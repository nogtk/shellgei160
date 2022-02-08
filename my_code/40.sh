# 回答 (OK)
cat qdata/40/kanjinum.txt | gsed -zE 's/\n([、|。])/\1\n/g' | zen_to_i

# 想定解
cat qdata/40/kanjinum.txt | ruby -rzen_to_i -ne 'puts $_.zen_to_i' | gsed -zE 's/\n([、。])/\1\n/g'
