#!/bin/bash -e
set -o pipefail
trap 'rm .tmp.top10' EXIT

# 回答 (NG)
# trap 'sort' SIGPIPE | head > .tmp.top10

# 想定解
sort | head > .tmp.top10 || true
# 別解
sort | sed -n '1,10p' > .tmp.top10

echo "+++++TOP 10+++++"
cat .tmp.top10
