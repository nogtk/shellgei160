# 想定解
## LP: $() で配列宣言
for i in $(cd /usr; echo *); do echo $i; done 

# 別解
## LP: ## で文字列を削除できる
## a=abc; echo ${a##a} => bc
for f in /usr/*; do echo ${f##*/}; done
a=(/usr/*); echo -e  ${a[@]/\/usr\//\\n}
