FROM rust:1.71.1-slim AS build
WORKDIR /project
COPY . .
RUN cargo build

FROM debian:bullseye-slim
COPY --from=build /project/target/debug/app /app
CMD ["/app"]