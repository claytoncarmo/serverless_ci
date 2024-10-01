FROM node:20-alpine

# Install packages
RUN apk update && apk add --update --no-cache \
    git \
    bash \
    curl \
    openssh \
    python3 \
    py3-pip \
    py-cryptography \
    wget \
    curl \
    aws-cli

RUN apk --no-cache add --virtual builds-deps build-base python3

# Install Serverless Framework
RUN npm install -g serverless@4