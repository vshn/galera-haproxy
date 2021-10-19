FROM docker.io/haproxy:2.0-alpine@sha256:ef068d0eebaf17d0fadcbac044fd331ce501e413ee3fe14952296979246bbb82

LABEL maintainer="soufiane.benali@vshn.ch"

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

USER 1001

ENV DB1_ADDRESS= \
  DB2_ADDRESS= \
  DB3_ADDRESS= \
  DB1_PORT=3306 \
  DB2_PORT=3306 \
  DB3_PORT=3306 
