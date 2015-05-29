FROM gregory90/golang:1.4

RUN go get github.com/tools/godep
RUN go get github.com/constabulary/gb/...
RUN touch /change

ADD notify /notify
RUN apt-get install -y inotify-tools psmisc ssh sudo && \
    wget https://raw.github.com/gregory90/go-reload/master/go-reload && \
    chmod +x go-reload && \
    chmod +x /notify && \
    mv go-reload /usr/local/bin/
