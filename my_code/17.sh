# 回答
cat /etc/passwd > ~/a
# 想定解
while read ln; do echo $ln; done < /etc/passwd > ~/a
# 別解
## LP: $(<ファイル)はコマンド置換の拡張的な機能で、ファイルの中身を引数に置き換えられる
echo "$(</etc/passwd)" > ~/a
