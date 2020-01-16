From golang:latest

LABEL maintainer="Brian Grier <brigrier@cisco.com>"

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o go-docker .

EXPOSE 8080

CMD ["./go-docker"]
