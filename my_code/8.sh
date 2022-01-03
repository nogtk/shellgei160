# 自分の解答
cat qdata/8/access.log | awk '{print $4}' | awk -F '[:]' '{print $2}' | awk '$1<=12{am+=1}$1>12{pm+=1}END{print "午前のアクセス数",am;print "午後のアクセス数",pm}'
# 想定解
## LP: -F で区切り文字を指定できる
##     NF は行数を表す変数。行数-2 で後ろから $x 変数を取得してる
##     sort | uniq -c 忘れてた
awk -F: '{print $(NF-2)}' qdata/8/access.log | awk '$1<12{print "午前"}$1>=12{print "午後"}' | sort | uniq -c
# 別解
cat qdata/8/access.log | grep -o '..:..:.. +0900' | sed 's/:.*//' | awk '{print $1<"12"?"午前":"午後"}' | sort | uniq -c
