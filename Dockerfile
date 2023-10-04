FROM golang:1.21.1-alpine

WORKDIR /usr/src/app

COPY . .

RUN go build -ldflags '-s -w' hello.go

ENTRYPOINT [ "./hello" ]