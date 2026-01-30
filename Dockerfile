FROM debian:bookworm

WORKDIR /

RUN apt-get update -y && apt install vim -y
RUN apt-get install -y wget
RUN apt-get install -y git 

#minicoda stuff
RUN mkdir -p ~/miniconda3
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN mv Miniconda3-latest-Linux-x86_64.sh ~/miniconda3/miniconda.sh
RUN bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
RUN rm ~/miniconda3/miniconda.sh

RUN git clone https://github.com/dbarnett/python-helloworld