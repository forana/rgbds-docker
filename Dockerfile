FROM ubuntu:18.04

RUN mkdir /app && mkdir /build

WORKDIR /build

RUN apt-get update && \
    apt-get install -y \
        byacc \
        flex \
        pkg-config \
        libpng-dev \
        git \
        python

RUN git clone --branch v0.3.8 https://github.com/rednex/rgbds.git
RUN cd rgbds && make install

WORKDIR /app

CMD make
