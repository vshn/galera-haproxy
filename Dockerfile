FROM docker.io/haproxy:2.0-alpine@sha256:82289acd6e6268cb9ec31cf5ea553f2079485b97f9fc4266f3e8e27e58bdfa0c

LABEL maintainer="soufiane.benali@vshn.ch"

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

USER 1001

ENV DB1_ADDRESS= \
  DB2_ADDRESS= \
  DB3_ADDRESS= \
  DB1_PORT=3306 \
  DB2_PORT=3306 \
  DB3_PORT=3306 
