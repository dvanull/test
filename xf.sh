#!/bin/sh
##

#ARCH="64"
cat <<EOF >/root/config.json
{
	"inbounds": [
	{
		"type": "shadowtls",
		"listen_port": 443,
		"handshake": {
			"server": "www.ted.com",
			"server_port": 443
		},
		"detour": "shadowsocks-in"
	},
	{
		"type": "shadowsocks",
		"tag": "shadowsocks-in",
		"listen": "127.0.0.1",
		"method": "2022-blake3-aes-128-gcm",
		"password": "k8uh6rd2WAQ3Baq=="
	}
	]
}
EOF


chmod +x /root/sign-box

# Run
/root/sign-box run -c /root/config.json
