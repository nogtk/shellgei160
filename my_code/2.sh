ls qdata/2/img/*.png | sed -E 's/(.*)(\.png$)/\1/' | xargs -I@ convert @.png @.jpg
# 想定解
## LP: sed は一致した部分を書き換えてくれるので、()を使ってキャプチャを考えなくて良い。想定解だと.pngを空文字に書き換えるだけで良い。
ls qdata/2/img/*.png | sed 's/\.png$//' | xargs -I@ convert @.png @.jpg
