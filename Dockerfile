FROM archlinux:latest

RUN mkdir /app
ADD . /app
WORKDIR /app
RUN cd /app

RUN pacman -Syyyu sudo --noconfirm
RUN chmod +x build.sh
RUN sudo ./build.sh