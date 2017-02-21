FROM gregory90/golang:1.8

RUN go get github.com/fschl/CompileDaemon
RUN go get github.com/derekparker/delve/cmd/dlv

ENV GOPATH /app
RUN apt-get install -y inotify-tools psmisc
