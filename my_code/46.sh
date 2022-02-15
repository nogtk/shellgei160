# 想定解
mecab -E '' qdata/46/const26.txt | awk -F'[\t,]' '{print $1","$(NF-1)}' | nkf -h | gsed -E 's/(.*),(.*)\1/(\2)\1/' | sed 's/(\**)//' | paste -sd ''
