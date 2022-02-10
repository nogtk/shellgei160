# 想定解
## LP: 自由度を持って一部(全部)を書き換えたい場合は awk を考える。パターン化で置換できそうならsed
## LP: awk は正規表現でマッチしたら、マッチしなかったらの条件で割と自由に記述できる
cat qdata/42/item.md | awk '/^[0-9]\./{a++;$1=a".";print}/^#/{a=0}!/^[0-9]\./'
