FROM crystallang/crystal:1.4-dev as build
WORKDIR /project
COPY . .
RUN shards build --release --production --static
RUN strip bin/*

FROM scratch
COPY --from=build /project/bin/* /
ENTRYPOINT ["/my-crystal-docker-template"]