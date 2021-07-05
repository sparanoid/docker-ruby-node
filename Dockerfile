FROM ruby:3-alpine
LABEL maintainer "sparanoid <t@sparanoid.com>"

RUN apk update -f \
    && apk add --no-cache -f \
    bash \
    build-base \
    cmake \
    curl \
    gcc \
    git \
    nodejs \
    npm \
    yarn \
    && rm -rf /var/cache/apk/*

RUN npm install -g grunt-cli
