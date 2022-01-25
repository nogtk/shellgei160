# 回答(OK)
cat qdata/31/iampen.txt | gsed -E 's/<strong>(.*)<\/strong>/<strong>\U\1<\/strong>/'

# 回答2 (OK)
cat qdata/31/iampen.txt | ruby -ne '$_.sub!(/<strong>(.*)<\/strong>/) { "<strong>#{$1.upcase}<\/strong>" }; puts $_'

# 想定解
gsed -r 's/(<strong>)([^<]+)/\1\U\2/' qdata/31/iampen.txt
