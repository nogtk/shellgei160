# 自分の解答(OK)
cat qdata/10/headings.md | sed -E 's/#{2} (.*)/\1\n---/' | sed -E 's/# (.*)/\1\n===/'
# 想定解
## LP: -r も -E と同様正規表現を使うためのもの
cat qdata/10/headings.md | sed -r 's/^## +(.*)/\1\n---/' | sed -r 's/^# +(.*)/\1\n===/'
