FROM ubuntu:16.04
LABEL maintainer=carl.w.pearson@gmail.com

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    doxygen graphviz make texlive texlive-latex-extra \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]