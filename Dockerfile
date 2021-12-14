FROM nginx:latest

RUN apt-get update && apt-get install -y wget curl vim iputils-ping

COPY nginx-reloader /usr/local/bin/
COPY docker-entrypoint.sh /usr/local/bin

RUN chmod +x /usr/local/bin/nginx-reloader \
    && chmod +x /usr/local/bin/docker-entrypoint.sh

ENV URL=

ENTRYPOINT ["docker-entrypoint.sh"]
