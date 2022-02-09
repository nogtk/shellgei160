# 想定解
## LP: sort / uniq で重複を排除する
cat qdata/41/annotation.md | grep -oE '\[\^.*\]:?' | sed 's/]$/] 目印/' | sed 's/:$/ 注釈文/' | sort | awk '{print $2,$1}' | uniq -f1 -u

# 別解
## LP: awk /正規表現/{コード} でマッチしたらコードが実行される。!は否定の条件なので !/正規表現/{コード} でマッチしなかったら実行されるコードを表現できる
cat qdata/41/annotation.md | grep -oE '\[\^.*\]' | sort | uniq -u | grep -F -f- qdata/41/annotation.md | grep -oE '\[\^.*\]:?' | awk -F: '/:/{print "注釈文",$1}!/:/{print "目印",$0}'cat qdata/41/annotation.md | grep -oE '\[\^.*\]' | sort | uniq -u | grep -F -f- qdata/41/annotation.md | grep -oE '\[\^.*\]:?' | awk -F: '/:/{print "注釈文",$1}!/:/{print "目印",$0}'
