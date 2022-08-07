FROM golang:1.16-alpine
RUN apk --no-cache add ca-certificates
WORKDIR /restapi
COPY . ./
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

FROM alpine:latest  
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=0 /restapi ./app
EXPOSE 8080
CMD ["./app"]  