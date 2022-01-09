for i in {1..100}; do echo "羊が$i匹"; sleep 1; done

seq 100 | xargs -I@ sh -c '{ echo "羊が@匹"; sleep 1; }'

# 想定解
n=1;while [ $n -le 100 ]; do echo "羊が$n匹"; n=$((n+1)); sleep 1; done
# 別解
seq 100 | while read n; do echo "羊が$n匹"; sleep 1; done
