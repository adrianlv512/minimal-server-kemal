FROM crystallang/crystal:latest-alpine
COPY server.cr server.cr
COPY lib lib
RUN crystal build --no-debug --release --static server.cr

FROM scratch
COPY --from=0 server server
COPY public public
CMD ["./server"]
