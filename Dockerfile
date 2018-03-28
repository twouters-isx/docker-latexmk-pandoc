FROM ubuntu:xenial

RUN apt-get update && apt-get install -y \
       texlive-full 
RUN apt-get install -y \
       pandoc \
       latexmk \
       curl \ 
    && rm -rf /var/lib/apt/lists/*

