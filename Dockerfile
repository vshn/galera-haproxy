FROM docker.io/haproxy:3.4-alpine@sha256:3c8c1df0ae3bea8834b3890fa6fa3b1653b4d6d9c44aecefba46428bfcfde2c0

LABEL maintainer="soufiane.benali@vshn.ch"

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

USER 1001

ENV DB1_ADDRESS= \
  DB2_ADDRESS= \
  DB3_ADDRESS= \
  DB1_PORT=3306 \
  DB2_PORT=3306 \
  DB3_PORT=3306 
