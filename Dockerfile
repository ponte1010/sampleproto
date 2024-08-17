FROM golang:1.22.6-alpine3.20
RUN apk update && apk add git curl alpine-sdk
RUN mkdir /go/src/samplepb
WORKDIR /go/src/samplepb
ADD . /go/src/samplepb/
# protoc
RUN apk add --no-cache protobuf-dev
