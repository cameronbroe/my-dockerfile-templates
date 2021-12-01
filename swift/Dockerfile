FROM swift:5.5 AS build
WORKDIR /project
COPY . .
RUN swift build

FROM swift:5.5-slim
COPY --from=build /project/.build/debug/ /app
CMD ["/app/app"]