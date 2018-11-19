FROM debian:latest

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib \
     build-essential chrpath socat libsdl1.2-dev xterm

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN useradd -ms /bin/bash yocto
USER yocto
WORKDIR /home/yocto

SHELL ["/bin/bash", "-c"]
