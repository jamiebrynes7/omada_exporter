FROM golang:alpine3.14

WORKDIR /workspace
COPY . /workspace
RUN go build
COPY omada-exporter "/usr/bin/omada-exporter"
RUN rm -rf "./*"

CMD ["/usr/bin/omada-exporter"]
