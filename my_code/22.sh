# 回答 (OK)
for i in $(echo {yabai.shellgei,ojisan.happy,usankusai.singularity}.{co.jp,com,tech}); do echo $i; done

# 想定解
## LP: 1文字単位の置換はtrコマンド
##     sort -R で結果をランダマイズできる
echo {mail,blog,eng,www,help,sub,ns,}.{robotics,ojisan,yamada,ueda,nakamura,tashiro,blacknon}.{co.jp,com,tech,org,jp,go.jp,com.tw,asia} | tr ' ' '\n' | sort -R | head -n 100 | sed 's/^\.//'
