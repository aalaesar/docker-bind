FROM alpine:latest

RUN apk add --no-cache bind 

EXPOSE 53 53/udp

ENTRYPOINT [ "/bin/sh" ]
CMD [ "named", "-c", "/etc/bind/named.conf", "-g", "-u", "named" ]