FROM golang:1.16-alpine AS builder

WORKDIR /usr/src/app

COPY . .

RUN go build && CGO_ENABLED=0 go install -ldflags '-extldflags "-static"' -tags timetzdata


FROM scratch
WORKDIR usr/src/app
COPY --from=builder /go/bin/server .
EXPOSE 8080

CMD ["./server"]

# before: 24.9MB
# after: 17.5MB