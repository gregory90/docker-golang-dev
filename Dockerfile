FROM gregory90/golang:1.6

RUN go get github.com/constabulary/gb/...

RUN apt-get install -y inotify-tools && \
    wget https://raw.github.com/gregory90/go-reload/master/go-reload && \
    chmod +x go-reload && \
    mv go-reload /usr/local/bin/
