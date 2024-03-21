FROM docker.io/haproxy:2.0-alpine@sha256:5cafd2b8befbf6d23660888e85a27f25035db62b976353175ddf0ab5ccac2f0c

LABEL maintainer="soufiane.benali@vshn.ch"

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

USER 1001

ENV DB1_ADDRESS= \
  DB2_ADDRESS= \
  DB3_ADDRESS= \
  DB1_PORT=3306 \
  DB2_PORT=3306 \
  DB3_PORT=3306 
