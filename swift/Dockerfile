FROM swift:6.1.0 AS build
WORKDIR /project
COPY . .
RUN swift build

FROM swift:6.1.0
COPY --from=build /project/.build/debug/ /app
CMD ["/app/app"]