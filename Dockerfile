FROM debian:buster

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install libncurses5-dev build-essential libssl-dev bc libelf-dev bc bison flex kmod cpio
RUN apt-get -y upgrade
RUN apt-get --purge -y autoremove
RUN apt-get clean

CMD ["bash"]
