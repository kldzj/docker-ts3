FROM debian:buster
LABEL maintainer="kldzj"

ENV TS3_DIR /opt/teamspeak3
ENV LANG C.UTF-8

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get -y install bzip2 wget ca-certificates && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p ${TS3_DIR} && \
    useradd -M teamspeak3

COPY . ${TS3_DIR}

RUN chown -R teamspeak3:teamspeak3 ${TS3_DIR}

EXPOSE 9987/udp 10011 30033

USER teamspeak3
WORKDIR ${TS3_DIR}
VOLUME ${TS3_DIR}
CMD ${TS3_DIR}/start-server