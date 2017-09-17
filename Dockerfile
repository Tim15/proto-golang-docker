FROM golang:alpine

WORKDIR /tmp
ARG VERSION=3.4.0
RUN apk add --no-cache curl wget openssl unzip git && \
  wget https://github.com/google/protobuf/releases/download/v${VERSION}/protoc-${VERSION}-$(uname -s)-$(uname -m).zip -O protoc.zip  && \
  unzip protoc.zip -d ./protoc && \
  mv protoc/bin /usr/bin && \	
  go get -u github.com/golang/protobuf/protoc-gen-go && \
  
