FROM golang:alpine

WORKDIR /app

COPY main.go .

RUN go build -o main main.go

EXPOSE 8080

CMD ["./main"]


RUN apk add --update ansible
COPY entrypoint.sh /.
ENTRYPOINT ["entrypoint.sh"]
