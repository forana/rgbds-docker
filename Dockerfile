FROM ubuntu:18.04

RUN mkdir /app && mkdir /build

WORKDIR /build

RUN apt-get update && \
    apt-get install -y \
        byacc \
        flex \
        pkg-config \
        libpng-dev \
        git

RUN git clone --branch v0.3.7 https://github.com/rednex/rgbds.git /build
RUN make Q=
RUN make install

WORKDIR /app
RUN rm -rf /build

ENV TERM=xterm-256color
CMD ["script", "-q", "-c", "/bin/bash", "/dev/null"]
