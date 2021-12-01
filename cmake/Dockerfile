FROM debian:bullseye-slim AS build
RUN apt-get update && \
	apt-get install -yy gcc make cmake

WORKDIR /project
COPY . .
RUN mkdir build && cd build && cmake .. && make

FROM debian:bullseye-slim

COPY --from=build /project/build/app /app
CMD ["/app"]