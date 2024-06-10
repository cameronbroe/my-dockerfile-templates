FROM swift:5.10.1 AS build
WORKDIR /project
COPY . .
RUN swift build

FROM swift:5.10.1
COPY --from=build /project/.build/debug/ /app
CMD ["/app/app"]