FROM alpine

ENV GOPATH=/go

RUN apk add --update go git && \
    mkdir /go && \
    go get -u golang.org/x/tour/gotour && \
    apk del git && \
    rm /var/cache/apk/* 

EXPOSE 8080

CMD ["/go/bin/gotour", "-http", "0.0.0.0:8080"]
