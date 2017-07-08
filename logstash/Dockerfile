FROM logstash:5
MAINTAINER Benjamin Rabiller <bra@oxalide.com>
 
### LOGSTASH CONF
COPY config/logstash.conf /etc/logstash/conf.d/logstash.conf
COPY config/template-access_log.json /etc/logstash/template-access_log.json

### CLEANUP
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

### NETWORK
EXPOSE 5043/udp

### BOOT
CMD ["logstash","--log.level", "debug", "-f", "/etc/logstash/conf.d/logstash.conf"]