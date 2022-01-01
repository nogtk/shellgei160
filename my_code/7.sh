cat qdata/7/kakeibo.txt | awk 'BEGIN{sum=0}$1<"20191001" || $2~/^\*/{sum+=int($3*1.08)}$2~/^[^*].*/{sum+=int($3*1.1)}END{print sum}'
# 想定解
cat qdata/7/kakeibo.txt | awk '{tax=($1<"20191001"||$2~"^*") ? 1.08 : 1.1; print $0, tax}' | awk '{print int($3*$4)}' | awk 'BEGIN{sum=0}{sum+=$1}END{print sum}'
## 別解
## awk 'BEGIN{sum=0}{sum+=$1}END{print sum}' は numsum コマンドで代替可能