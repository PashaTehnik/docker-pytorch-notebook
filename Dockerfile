FROM nvidia/cuda:12.0.1-base-ubuntu20.04


ENV SHELL=/bin/bash


WORKDIR /home


RUN apt-get update && apt-get install -y \
    python3-pip \
    apt-utils \
    vim \
    nano \
    git 


RUN ln -s /usr/bin/python3 /usr/bin/python

RUN pip install \
    numpy \
    torch \
    jupyterlab \
    pandas


CMD ["bash"]
EXPOSE 8888
