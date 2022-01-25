# Full Cycle 2 - Kafka
Um desafio do curso Full Cycle 2. Criando uma aplicação em Golang para enviar e receber mensagens Kafka, além de monitorar e gerenciar recursos do mesmo.


## Execução

````shell
docker-compose up -d
````

### Producer 

Conectando no `Producer` para enviar uma mensagem:

````shell
docker exec -it gokafka bash

go run cmd/producer/main.go 
````

### Consumer 

Conectando no `Consumer` para receber mensagens:

````shell
docker exec -it gokafka bash

go run cmd/consumer/main.go 
````

## Commands

Connectando no container kafka:

````shell
docker exec -it fc2-kafka_kafka_1 bash
````

Criando um `topic` com 3 partitions:

````shell
kafka-topics --create --topic=test --bootstrap-server=localhost:9092 --partitions=3
````

Listando todos os `topics`:
````shell
kafka-topics --list --bootstrap-server=localhost:9092

````

Exibindo detalhes de um `topic` já criado:
````shell
kafka-topics --bootstrap-server=localhost:9092 --topic=test --describe 

````

Criando um `consumer` de um determinado `topic`:
````shell
kafka-console-consumer --bootstrap-server=localhost:9092 --topic=test 
````

Criando um `producer` de um determinado `topic`:
````shell
kafka-console-producer --bootstrap-server=localhost:9092 --topic=test 
````

Criando um `consumer` de um determinado `topic` e buscando todas as mensagem enviado até o momento:
````shell
kafka-console-consumer --bootstrap-server=localhost:9092 --topic=test --from-beginning
````

Criando um `consumer` de um determinado `topic` com distinção de grupo:
````shell
kafka-console-consumer --bootstrap-server=localhost:9092 --topic=test --group=x
````

Exibindo detalhes de um grupo:
````shell
kafka-consumer-groups --bootstrap-server=localhost:9092 --group=x --describe
````