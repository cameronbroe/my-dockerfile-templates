FROM rust:1.75.0-slim AS build
WORKDIR /project
COPY . .
RUN cargo build

FROM debian:bullseye-slim
COPY --from=build /project/target/debug/app /app
CMD ["/app"]