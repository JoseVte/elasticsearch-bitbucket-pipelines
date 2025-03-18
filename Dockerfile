FROM docker.elastic.co/elasticsearch/elasticsearch:8.17.3

LABEL maintainer="Jose Vicente <jvortsromero@gmail.com>"

ENV discovery.type="single-node"
ENV xpack.security.enabled=false
ENV network.host=0.0.0.0
ENV transport.host=0.0.0.0

CMD ["elasticsearch"]
