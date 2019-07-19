FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    rm -rf /var/lib/apt/lists/*

# Python3.7
ARG PYTHON_BUILD=Python-3.7.4
ARG PYTHON=python3.7
ARG PIP=pip3.7
COPY Python-3.7.4.tgz /tmp
WORKDIR /tmp

RUN apt-get update && apt-get install -y \
    libbz2-dev \
    libc6-dev \
    libffi-dev \
    libgdbm-dev \
    libncursesw5-dev \
    libreadline-gplv2-dev \
    libsqlite3-dev \
    libssl-dev \
    tk-dev \
    zlib1g-dev && \
    tar -xvf ${PYTHON_BUILD}.tgz && \
    cd ${PYTHON_BUILD} && \
    ./configure --enable-optimizations && \
    make altinstall && \
    cd ../ && \
    rm -rf ${PYTHON_BUILD} && \
    rm ${PYTHON_BUILD}.tgz && \
    ln -s $(which ${PYTHON}) /usr/local/bin/python && \
    ${PYTHON} -m pip --no-cache-dir install --upgrade \
    pip \
    setuptools


RUN ${PIP} install \
    arrow \
    boto3 \
    fire \
    gensim \
    lxml \
    mecab-python3 \
    moto \
    pyspark \
    pytest \
    scikit-learn \
    ujson


ENV AWS_DEFAULT_REGION ap-northeast-1


RUN useradd -ms /bin/bash ironhead
USER ironhead
WORKDIR /home/ironhead
