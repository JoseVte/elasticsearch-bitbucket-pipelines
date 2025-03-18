### Elasticsearch image for Bitbucket Pipelines
Bitbucket pipelines does not allow you to use dot notation in variables. So I created my own elastic search docker image to include the discovery type.

## Version
Elasticsearch 8.17.3

## Hub
https://hub.docker.com/r/josrom/elasticsearch-bitbucket-pipeline

## Example
```
definitions:
  steps:
    - step: &run-tests
        name: Run tests
        script:
          - sleep 30 # Waiting elasticsearch. In your real pipeline you can not use it.
          - curl -XGET localhost:9200/_cat/health
        services:
          - elasticsearch
  services:
    elasticsearch:
      image: josrom/elasticsearch-bitbucket-pipeline
      variables:
        ES_JAVA_OPTS: '-Xms512m -Xmx512m'
    docker:
      memory: 2048

pipelines:
  pull-requests:
    '**':
      - step: *run-tests
```
