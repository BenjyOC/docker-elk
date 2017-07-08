FROM debian:jessie-backports

MAINTAINER Oxalide/BU-retail bra@oxalide.com

RUN mkdir -p /var/lock/apache2

RUN apt-get update && \
	apt-get install -y vim apache2 libapache2-mod-geoip libapache2-mod-php5 php5 php5-geoip php5-common && \
	apt-get clean && rm -rf /var/lib/apt/lists/*

### environment variable
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2

ADD 001-project-template.conf /etc/apache2/sites-available/
RUN rm -rf /etc/apache2/sites-enabled \
 && mkdir -p /etc/apache2/sites-enabled \
 && ln -s /etc/apache2/sites-available/001-project-template.conf /etc/apache2/sites-enabled/

ADD index.php /var/www/html/
RUN rm -f /var/www/html/index.html

RUN a2enmod status && \
    a2enmod deflate && \
    a2enmod headers && \
    a2enmod expires && \
    a2enmod ssl && \
    a2enmod rewrite && \
    a2dismod -f autoindex

RUN ln -sf /proc/self/fd/1 /var/log/apache2/access.log && \
    ln -sf /proc/self/fd/2 /var/log/apache2/error.log

ENTRYPOINT ["apache2"]
CMD ["-D", "FOREGROUND"]