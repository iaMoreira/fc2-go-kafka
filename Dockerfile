FROM golang:1.17

WORKDIR /go/src

ENV PATH="/go/bin:${PATH}"

RUN apt-get update && \
    apt-get install build-essential librdkafka-dev -y

RUN go get github.com/confluentinc/confluent-kafka-go
CMD [ "tail", "-f", "/dev/null" ]