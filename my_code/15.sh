# 問題1
# 回答 & 想定解 だが mac では動かなかった
echo i am perfect human | (read a; echo ${a^^})

# 問題2
# 未回答

# 想定解
echo pen-pineapple-apple-pen | (IFS=-; read -a w; echo "${w[*]^}")
