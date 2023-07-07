FROM ubuntu:20.04

RUN apt-get update && apt-get install -y wget

ARG TF_VERSION
ENV TF_VERSION=${TF_VERSION}
RUN wget https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip