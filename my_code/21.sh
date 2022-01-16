# 回答 (失敗)
for i in $(cd qdata/21;echo **/*); do echo $i; done | awk '$1~/^dir_a\/file_/;/^dir_b\/file_/;/^dir_c\/**\/file_/{print}'

# 想定解
## LP: find を使う / grep の -v オプションは条件にマッチしないものを取り出すコマンド
(cd qdata/21; find . -type f) | grep -v "\./dir_b/d" | sort
