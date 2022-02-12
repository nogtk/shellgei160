# 想定解
## LP: sed は2段階で変換可能. '/%/s/$/ @' は %があるものに対して、末尾を ' @' に置換する処理をかける
gsed -Ez 's/シ.?ェ.?ル.?ス.?ク.?リ.?プ.?ト/%&%/g' qdata/44/diary.txt | sed '/%/s/$/ @/;s/%//g;'

# 別解
awk '{a[NR]=$0;b[NR]=gensub(/シェルスクリプト/,"","g",$0)}END{for(i=1;i<=NR;i++){print a[i],b[i-1]a[i]b[i+1]}}' qdata/44/diary.txt | awk '{print$1,/シェルスクリプト/?"@":""}'
