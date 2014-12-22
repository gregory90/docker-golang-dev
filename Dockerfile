FROM gregory90/golang:1.4

RUN go get -u github.com/c9s/gomon && go get github.com/tools/godep
RUN apt-get install -y inotify-tools psmisc && \
    wget https://raw.github.com/alexedwards/go-reload/master/go-reload && \
    chmod +x go-reload && \
    mv go-reload /usr/local/bin/
