# Build Geth in a stock Go builder container
FROM alpine:3.4

RUN apk add --no-cache make gcc musl-dev linux-headers

RUN apk add --no-cache ca-certificates
COPY /home/ubuntu/go-ethereum/build/bin/geth /usr/local/bin/

EXPOSE 8545 8546 30303 30303/udp 30304/udp
ENTRYPOINT ["geth"]
