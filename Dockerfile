FROM ubuntu:20.04

RUN apt update && \
	apt install wget -y && \
	wget https://github.com/SagerNet/sing-box/releases/download/v1.0.6/sing-box_1.0.6_linux_amd64.deb && \
	dpkg -i sing-box_1.0.6_linux_amd64.deb && \
	rm -rf /var/lib/apt/lists/* && \
	rm /etc/sing-box/config.json && \
	
ADD config.json /etc/sing-box/config.json

CMD ['sh', '/usr/bin/sing-box']