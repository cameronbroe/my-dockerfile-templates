FROM swift:5.9.2 AS build
WORKDIR /project
COPY . .
RUN swift build

FROM swift:5.9.2
COPY --from=build /project/.build/debug/ /app
CMD ["/app/app"]