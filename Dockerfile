FROM gregory90/golang:1.14

RUN go get github.com/githubnemo/CompileDaemon


ENV GOPATH /app
RUN apt-get install -y inotify-tools psmisc
