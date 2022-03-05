FROM golang:alpine3.14

WORKDIR /workspace
COPY . /workspace

RUN go build && \
    cp ./omada_exporter /usr/bin/omada-exporter && \
    rm -rf "./*"

CMD ["/usr/bin/omada-exporter"]
