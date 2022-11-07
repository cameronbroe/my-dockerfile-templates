FROM swift:5.7.1 AS build
WORKDIR /project
COPY . .
RUN swift build

FROM swift:5.7.1
COPY --from=build /project/.build/debug/ /app
CMD ["/app/app"]