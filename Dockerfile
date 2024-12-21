ARG AWSCLI_VERSION=2.22.22
ARG KUBECTL_VERSION=1.32.0

FROM alpine/k8s:${KUBECTL_VERSION} AS kubectl
FROM amazon/aws-cli:${AWSCLI_VERSION} AS awscli
FROM debian:stable-slim AS main

LABEL maintainer="Iván Alejandro Marugán <hello@ialejandro.rocks>"                         \
      description="Create or update token for Amazon ECR (https://aws.amazon.com/en/ecr/)"

COPY --from=kubectl /usr/bin/kubectl /usr/local/bin/
COPY --from=awscli /usr/local/aws-cli/ /usr/local/aws-cli/
COPY --from=awscli /usr/local/bin/ /usr/local/bin/
