FROM gregory90/golang:1.10

RUN go get github.com/fschl/CompileDaemon

ENV GOPATH /app
RUN apt-get install -y inotify-tools psmisc
