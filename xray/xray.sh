docker run -d \
  --name xray \
  --restart always \
  --network host \
  --log-opt max-size=50m --log-opt max-file=3 \
  -v /etc/xray/config.json:/etc/xray/config.json \
  teddysun/xray \
  xray -c /etc/xray/config.json