FROM golang:alpine

WORKDIR /tmp
ARG VERSION=3.4.0

RUN apk add --no-cache git inotify-tools protobuf && \
  go get -u github.com/golang/protobuf/protoc-gen-go

WORKDIR /go/src
