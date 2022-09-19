FROM swift:5.7.0 AS build
WORKDIR /project
COPY . .
RUN swift build

FROM swift:5.7.0
COPY --from=build /project/.build/debug/ /app
CMD ["/app/app"]