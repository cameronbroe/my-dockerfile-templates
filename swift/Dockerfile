FROM swift:5.7.3 AS build
WORKDIR /project
COPY . .
RUN swift build

FROM swift:5.7.3
COPY --from=build /project/.build/debug/ /app
CMD ["/app/app"]