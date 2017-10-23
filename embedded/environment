FROM debian

MAINTAINER Chu <root@sh3ll.me>

WORKDIR /root/

RUN dpkg --add-architecture i386 && apt update \
	&& apt install wget vim python python3 build-essential crossbuild-essential* libc6-dbg* gdb gdb-multiarch qemu git -y \
	&& wget http://ftp.cn.debian.org/debian/pool/main/c/cramfs/cramfsprogs_1.1-6_amd64.deb && dpkg -i cramfsprogs_1.1-6_amd64.deb && rm cramfsprogs_1.1-6_amd64.deb \
	&& git clone https://github.com/devttys0/binwalk && (cd binwalk && python3 setup.py install && sed -ie 's/cramfsprogs //' deps.sh && bash ./deps.sh --yes) \
	&& git clone https://github.com/devttys0/sasquatch && (cd sasquatch && bash ./build.sh && cd squashfs4.3/squashfs-tools && make && make install) \
	&& rm -rf binwalk && rm -rf sasquatch \
	&& apt clean && apt autoclean && apt autoremove -y --purge \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
