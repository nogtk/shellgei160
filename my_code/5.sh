# うまく行かなかった
awk 'match($1, /pool\s(.*)/, fqdn){print "a"}' qdata/5/ntp.conf
# 想定解
cat qdata/5/ntp.conf | awk '$1=="pool"' | awk '{print $2}'
