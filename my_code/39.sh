# 想定解
## LP: print "" で改行のみ出力. sed で単語単位で区切ってから awk で計算している
cat qdata/39/bash_description.txt | sed 's/ / \n/g;s/$/ /' | awk '{L+=length($0)}L>31{print "";L=length}{print $0}' | awk '{sub(/ $/,"");print}'

# 別解
## fold は文字を折り返すコマンド
cat qdata/39/bash_description.txt | fold -s -w 31 | sed 's/ *$//'

# fmt -w で幅を指定して文章を折り返すことが可能
fmt -w 31 qdata/39/bash_description.txt

# grep -o でマッチした部分のみを抽出する
cat qdata/39/bash_description.txt | ggrep -Eo '.{,30}( |$)' | sed 's/ $//'
