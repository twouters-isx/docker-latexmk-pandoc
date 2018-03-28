FROM ubuntu:xenial

RUN apt-get update && apt-get install -y \
       texlive-full 
RUN apt-get install -y \
       pandoc 
RUN apt-get install -y \
       latexmk 
RUN apt-get install -y \
       curl \ 
    && rm -rf /var/lib/apt/lists/*

