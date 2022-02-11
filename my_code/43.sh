# 想定解
## LP: sort -s で安定ソート、-k で絡む指定でsortできる
cat qdata/43/bunken.txt | awk 'NR%3==1{k=$1};{print k,$0}' | sort -s -k1,1 | sed -E s/^....//g

# 別解
cat qdata/43/bunken.txt | tr '\n' '@' | sed 's/@@/@\n/g' | sort | tr '@' '\n'
