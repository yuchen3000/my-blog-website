#!/bin/sh

# rm -rf /etc/xray/config.json
cat << EOF > /etc/xray/config.json
{
  "log": {
    "loglevel": "none"
  },
  "inbounds": [
    {
      "port": 8000,
      "protocol": "VLESS",
      "settings": {
        "clients": [
          {
            "id": "3216cc34-b514-47c6-b82a-ccd37601a532",
            "alterId": 0
          }
        ],
        "decryption": "none"
      },
      "streamSettings": {
        "network": "ws",
        "wsSettings": {
          "path": ""
        }
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}
EOF

#run xray

xray -config=/etc/xray/config.json
