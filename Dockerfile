FROM golang:1.9
WORKDIR /go/src/github.com/sample
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /app .
ENTRYPOINT ["/app"]
