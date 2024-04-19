FROM docker.io/haproxy:2.0-alpine@sha256:3d3ee83f6251251eeee9f40edc86486049672d7b8a354353c91570b4ea614b5b

LABEL maintainer="soufiane.benali@vshn.ch"

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

USER 1001

ENV DB1_ADDRESS= \
  DB2_ADDRESS= \
  DB3_ADDRESS= \
  DB1_PORT=3306 \
  DB2_PORT=3306 \
  DB3_PORT=3306 
