FROM nvidia/cuda:12.0.1-base-ubuntu20.04

# Set bash as the default shell
ENV SHELL=/bin/bash

# Create a working directory
WORKDIR /home

# Build with some basic utilities
RUN apt-get update && apt-get install -y \
    python3-pip \
    apt-utils \
    vim \
    nano \
    git 

# alias python='python3'
RUN ln -s /usr/bin/python3 /usr/bin/python

RUN pip install \
    numpy \
    torch \
    jupyterlab

CMD ['"jupyter lab --ip=0.0.0.0 --port=8888 --allow-root --no-browser --NotebookApp.iopub_data_rate_limit=1.0e10 --NotebookApp.token='superres' --notebook-dir='/'" > /home/run_nb.sh']
EXPOSE 8888
