# Create or update token for Amazon ECR

## Introduction

Create or update token programmatically for [Amazon ECR](https://aws.amazon.com/en/ecr/).

Default versions:

* aws-cli: `2.10.3`
* kubectl: `1.23.16`

Here a full [tag list](https://hub.docker.com/repository/docker/devopsiaci/ecr-token/tags?page=1&ordering=last_updated)!

## Image details (from dive)

```text
│ Image Details ├─────────────

Total Image size: 302 MB
Potential wasted space: 0 MB
Image efficiency score: 100 %
```

You can reproduce this summary with [`dive`](https://github.com/wagoodman/dive):

```command
dive build -t <tag-name> .
```

## Quick start

[**Available images**](https://hub.docker.com/r/devopsiaci/ecr-token/tags)

### Run container

```command
docker run --name <container-name> awscli2.10.3-kubectl1.30.3
```

## Use case

This image is used by [helm-ecr-token](https://github.com/devops-ia/helm-charts/tree/main/charts/ecr-registry)
