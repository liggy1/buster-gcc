FROM debian:buster

RUN apt-get update && apt-get -y upgrade && \
    apt-get -y install libncurses5-dev build-essential libssl-dev bc libelf-dev bc bison flex kmod cpio && \
    apt-get -y upgrade && \
    apt-get --purge -y autoremove && \
    apt-get clean

CMD ["bash"]
