FROM ubuntu:20.04

WORKDIR /root
ADD xf.sh /root/xf.sh
ADD sing-box /root/sing-box

RUN chmod +x /root/xf.sh
ENTRYPOINT ["sh", "/root/xf.sh"]
EXPOSE 80
