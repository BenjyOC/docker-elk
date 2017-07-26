### REGISTRY TO USE
FROM nginx:1.13.1

### NGNIX
RUN rm -f /etc/nginx/nginx.conf && \
    rm -f /etc/nginx/conf.d/default.conf
ADD conf/nginx.conf /etc/nginx/
ADD conf/default.conf /etc/nginx/conf.d
