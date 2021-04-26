FROM docker.io/haproxy:2.3-alpine@sha256:1168dcda566f7ce42120fe56135178d78752e7d198b4f96a77c00f1b06af1853

LABEL maintainer="soufiane.benali@vshn.ch"

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

USER 1001

ENV DB1_ADDRESS= \
  DB2_ADDRESS= \
  DB3_ADDRESS= \
  DB1_PORT=3306 \
  DB2_PORT=3306 \
  DB3_PORT=3306 
