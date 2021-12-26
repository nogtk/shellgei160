grep "^.*\.exe$" qdata/1/files.txt

# 別解
## cat でパイプする
cat qdata/1/files.txt | grep "\.exe$"
## awk
### LP: awk '/正規表現/' で grep '正規表現' と同じ意味になる
cat qdata/1/files.txt | awk '/\.exe$/'
## sed
### LP: sed に /正規表現/p とかくとマッチした行だけ出力してくれる
cat qdata/1/files.txt | sed -n '/\.exe$/p'