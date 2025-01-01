FROM golang:1.21-alpine

WORKDIR /app
COPY . .
RUN go build -o bin/gobank

EXPOSE 3000
CMD ["./bin/gobank"]