#!/bin/bash
set -e
# rm -f "$0"
for i in {1..100}; do
  printf "%d " "$i"
  if [[ $(( i % 3 )) == 0 ]; then
    printf "%s" "Fizz"
  fi
  ! (( i % 5 )) && printf "%s" "Buzz"
  echo
done

# 回答 rm -f "$0" をコメントアウトして、以下を実行した
./my_code/29.sh 2>&1 | awk {'print $3'} | sed s/://

# 想定解
## LP: !a[$1]++{print $1} について
##     {print $1} の前がtrue(not 0)だったら実行される。今回は `!` で条件を判定していて最初は必ず0なので、print $1が実行される。同じ行番号については increment されているため、実行されない
bash -n qdata/29/fb.bash |& awk {'print $3'} | sed s/:// | awk '!a[$1]++{print $1}'
