root@AKTC-100028994-1:~# docker run --rm ghcr.io/xtls/xray-core uuid
47db9dac-0b95-428c-be1d-dab9de78f89c
root@AKTC-100028994-1:~# docker run --rm ghcr.io/xtls/xray-core x25519
PrivateKey: 4IoiEu255R8f34oZ0LuNK3qoQYPxVZDoUdwTSXY0Vlc
Password (PublicKey): DB4c1Kcm_1oGQ5TRPWcj6XqcCMNsWZccmbumuCxFugs
Hash32: F9xy_yYhbEtoI8_SD_QeoM7r6pecDhqhkSxzYjHuq_s


vless://你的UUID@你的服务器IP:443?encryption=none&flow=xtls-rprx-vision&security=reality&sni=www.apple.com&fp=chrome&pbk=你的PublicKey&sid=6ba7b810&type=tcp#自建VLESS-REALITY
