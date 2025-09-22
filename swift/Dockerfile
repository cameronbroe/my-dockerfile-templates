FROM swift:6.2.0 AS build
WORKDIR /project
COPY . .
RUN swift build

FROM swift:6.2.0
COPY --from=build /project/.build/debug/ /app
CMD ["/app/app"]