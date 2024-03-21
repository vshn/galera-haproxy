FROM docker.io/haproxy:2.9-alpine@sha256:554002a127d4909c721f56b5a306b0587587e83e855a35cb2cff9ff15204b63c

LABEL maintainer="soufiane.benali@vshn.ch"

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

USER 1001

ENV DB1_ADDRESS= \
  DB2_ADDRESS= \
  DB3_ADDRESS= \
  DB1_PORT=3306 \
  DB2_PORT=3306 \
  DB3_PORT=3306 
