FROM golang:alpine

RUN apk add --update ansible
COPY entrypoint.sh /.
ENTRYPOINT ["entrypoint.sh"]

WORKDIR /app

COPY main.go .

RUN go build -o main main.go

EXPOSE 8080

CMD ["./main"]
