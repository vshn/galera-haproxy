FROM docker.io/haproxy:2.0-alpine@sha256:2bbfdebe61e13ad2bc33c24a4db0c88e72b05bc1fa133092293078cdaa5a4f00

LABEL maintainer="soufiane.benali@vshn.ch"

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

USER 1001

ENV DB1_ADDRESS= \
  DB2_ADDRESS= \
  DB3_ADDRESS= \
  DB1_PORT=3306 \
  DB2_PORT=3306 \
  DB3_PORT=3306 
