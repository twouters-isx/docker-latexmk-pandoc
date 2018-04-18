FROM ubuntu:xenial

MAINTAINER Thomas WOUTERS <thomas.wouters@irt-systemx.fr>

LABEL Decription Texlive latexmk and pandoc in one docker
LABEL isx.name="docker-latexmk-pandoc"
LABEL isx.url="https://github.com/twouters-isx/docker-latexmk-pandoc"
LABEL isx.version="1.0"
LABEL isx.build-date=$BUILD_DATE 

RUN apt-get update && apt-get install -y \
       texlive-full 
RUN apt-get install -y \
       pandoc \
       latexmk \
       curl
RUN apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV HOME /build
WORKDIR /build

VOLUME ["/build"]
