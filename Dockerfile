FROM docker.io/haproxy:2.4-alpine@sha256:d83c5f609b4fc1d81c4aecf47f3b2808a4513cba4db07d3a0e1ea9a1b8451876

LABEL maintainer="soufiane.benali@vshn.ch"

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

USER 1001

ENV DB1_ADDRESS= \
  DB2_ADDRESS= \
  DB3_ADDRESS= \
  DB1_PORT=3306 \
  DB2_PORT=3306 \
  DB3_PORT=3306 
