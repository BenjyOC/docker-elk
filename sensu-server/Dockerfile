FROM debian:jessie

RUN apt-get update && \
    apt-get install -y wget apt-transport-https && \
    apt-get clean

RUN wget -q https://sensu.global.ssl.fastly.net/apt/pubkey.gpg -O- | apt-key add - && \
    echo "deb     https://sensu.global.ssl.fastly.net/apt jessie main" | tee /etc/apt/sources.list.d/sensu.list && \
    apt-get update && \
    apt-get install -y sensu && \
    apt-get clean

### CLEANUP
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
