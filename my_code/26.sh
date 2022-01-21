# 想定解
## LP: [ ] (test command) と && をつなげることで、条件が真の場合に実行するコマンドを表現できる
## LP: test command は -o で OR, -a で AND を表現する
## LP: SIGCHLD は子プロセスの終了時に送信されるシグナル。これをtrapすることで各コマンドの終了を検知する。
trap 'hour=$(date "+%H");[ $hour -ge 18 -o $hour -le 4 ] && echo 早く帰れ' SIGCHLD
