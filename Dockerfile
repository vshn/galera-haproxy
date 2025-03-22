FROM docker.io/haproxy:2.9-alpine@sha256:3e29449a6beed63262e36104adf531b4e41b359f61937303f5ea8607987b3748

LABEL maintainer="soufiane.benali@vshn.ch"

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

USER 1001

ENV DB1_ADDRESS= \
  DB2_ADDRESS= \
  DB3_ADDRESS= \
  DB1_PORT=3306 \
  DB2_PORT=3306 \
  DB3_PORT=3306 
