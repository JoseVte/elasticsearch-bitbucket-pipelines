FROM docker.elastic.co/elasticsearch/elasticsearch:8.12.0

LABEL maintainer Jose Vicente <jvortsromero@gmail.com>

ENV discovery.type="single-node"
ENV xpack.security.enabled=false

EXPOSE 9200/tcp
