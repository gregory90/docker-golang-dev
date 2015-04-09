FROM gregory90/golang:1.4

RUN go get github.com/tools/godep
RUN touch /change
RUN apt-get install -y inotify-tools psmisc && \
    wget https://raw.github.com/gregory90/go-reload/master/go-reload && \
    chmod +x go-reload && \
    mv go-reload /usr/local/bin/
