FROM ubuntu:20.04

WORKDIR /root
ADD xf.sh /root/xf.sh

RUN chmod +x /root/xf.sh && apt update && apt install wget -y && wget -O /root/sing-box https://github.com/dvanull/test/raw/main/sing-box
ENTRYPOINT ["sh", "/root/xf.sh"]
EXPOSE 80
