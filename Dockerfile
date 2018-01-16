# Build Geth in a stock Go builder container
FROM alpine:3.4

RUN apk add --no-cache make gcc musl-dev linux-headers

RUN apk add --no-cache ca-certificates curl git

#WORKDIR /home/ubuntu/go-ethereum

RUN pwd
RUN ls -la 
#RUN ls -la /home
#RUN curl -O https://storage.googleapis.com/golang/go1.9.2.linux-amd64.tar.gz
#RUN tar -xvf go1.9.2.linux-amd64.tar.gz
#RUN ls -la 
#RUN mkdir /gort
#RUN export PATH=$PATH:/go/bin
#RUN export GOROOT=/go
#RUN export PATH=$PATH:$GOROOT/bin
#RUN cd go/bin
#RUN ls -la 
#RUN go version
#RUN git clone https://github.com/MagnusTiberius/go-ethereum
#RUN cd go-ethereum
#RUN make geth
#RUN ls -la /home/ubuntu
#RUN ls -la /home/ubuntu/go-ethereum
#RUN ls -la /home/ubuntu/go-ethereum/build
#RUN ls -la /home/ubuntu/go-ethereum/build/bin
COPY geth /usr/local/bin/

EXPOSE 8545 8546 30303 30303/udp 30304/udp
ENTRYPOINT ["geth"]
