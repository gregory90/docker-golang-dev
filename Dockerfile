FROM gregory90/golang:latest

RUN go get -u github.com/c9s/gomon

WORKDIR /gopath
