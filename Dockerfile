FROM ubuntu:12.04

RUN apt-get update
RUN apt-get install -y autoconf automake bash bison bzip2 diffutils file flex m4 \
      g++ gawk groff-base libncurses-dev libtool libslang2 make patch perl pkg-config \
      shtool subversion tar texinfo zlib1g zlib1g-dev git-core gettext libexpat1-dev \
      libssl-dev cvs gperf unzip python libxml-parser-perl gcc-multilib gconf-editor \
      libxml2-dev g++-4.4 g++-multilib gitk libncurses5 mtd-utils libncurses5-dev \
      libstdc++6-4.4-dev libvorbis-dev g++-4.4-multilib git autopoint autogen sed \
      build-essential intltool libelf1:i386 libglib2.0-dev
RUN apt-get install lib32z1-dev lib32stdc++6

WORKDIR /root
RUN git clone https://github.com/RMerl/asuswrt-merlin
RUN cd /root/asuswrt-merlin && git checkout 380.64

ADD build-wifidog build-wifidog
