# 回答 
set | grep ^BASH | awk -F= '{print $1}'

# 想定解
echo ${!BASH*}

# 別解
## LP: s:0:4 で変数sの0文字目から4文字だけ切り取る変形、s%%文字列 で sから文字列にマッチした部分をカットしている
set | while read s;do [[ "${s:0:4}" = 'BASH' ]] && echo ${s%%=*}; done
