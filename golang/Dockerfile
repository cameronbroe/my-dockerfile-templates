FROM golang:1.21.6 AS build
WORKDIR /project
COPY . .
RUN go mod download
RUN go build -o app main.go

FROM scratch
COPY --from=build /project/app /app
CMD ["/app"]