docker run --name ssserver -e PASSWORD="158818" -e METHOD="aes-256-gcm" -e SERVER_PORT=8888 -p 8888:8888 -p 8888:8888/udp -d --restart always shadowsocks/shadowsocks-libev
