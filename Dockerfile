FROM ubuntu:xenial

RUN apt-get update && apt-get install -y \
       texlive-full 
RUN apt-get install -y \
       pandoc \
       latexmk \
       curl
RUN apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

