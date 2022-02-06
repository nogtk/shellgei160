# 回答 (OK)
cat qdata/38/this_is_it.txt | sed -E 's/&(amp;)+quot;/\"/g'

# 別解
a="$(<qdata/38/this_is_it.txt)"; while [ "$a" != "$b" ]; do b="$a"; a="${a//&amp;/&}"; a="${a//&quot;/\"}"; done; echo "$a"
