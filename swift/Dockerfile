FROM swift:6.2.3 AS build
WORKDIR /project
COPY . .
RUN swift build

FROM swift:6.2.3
COPY --from=build /project/.build/debug/ /app
CMD ["/app/app"]