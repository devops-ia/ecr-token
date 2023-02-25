ARG KUBECTL_VERSION=1.23.16
ARG AWSCLI_VERSION=2.10.3

FROM alpine/k8s:${KUBECTL_VERSION} as kubectl
FROM amazon/aws-cli:${AWSCLI_VERSION} as awscli
FROM debian:stable-slim AS main

LABEL maintainer="Iván Alejandro Marugán <hello@ialejandro.rocks>"
LABEL description="Create or update token for Amazon ECR (https://aws.amazon.com/en/ecr/)"
LABEL version="1.0"

COPY --from=kubectl /usr/bin/kubectl /usr/local/bin/
COPY --from=awscli /usr/local/aws-cli/ /usr/local/aws-cli/
COPY --from=awscli /usr/local/bin/ /usr/local/bin/
