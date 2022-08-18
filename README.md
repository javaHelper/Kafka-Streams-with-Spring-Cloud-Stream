# Kafka-Streams-with-Spring-Cloud-Stream

# Installing Confluent Kafka

- Start Confluent Kafka

```sh
confluent local services start
```

- Stop Confluent Kafka

```sh
confluent local services stop
```


```sh
prateekashtikar@Prateeks-MacBook-Pro Prateek % confluent local services start
The local commands are intended for a single-node development environment only,
NOT for production usage. https://docs.confluent.io/current/cli/index.html

Using CONFLUENT_CURRENT: /var/folders/kn/4wr9__651l37hckxvnnwt4hh0000gn/T/confluent.146957
Starting ZooKeeper
ZooKeeper is [UP]
Starting Kafka
Kafka is [UP]
Starting Schema Registry
Schema Registry is [UP]
Starting Kafka REST
Kafka REST is [UP]
Starting Connect
Connect is [UP]
Starting ksqlDB Server
ksqlDB Server is [UP]
Starting Control Center
Control Center is [UP]
prateekashtikar@Prateeks-MacBook-Pro Prateek % 
```

# Produce Message:

```sh
prateekashtikar@Prateeks-MacBook-Pro Prateek % kafka-console-producer --topic test-topic --broker-list localhost:9092
>{"name":"Prateek Ashtikar", "age": 34, "gender": "Male"}
>{"name":"Laxmi Ashtikar", "age": 63, "gender": "Female"}
>
```

# Consuming Message:

```sh
prateekashtikar@Prateeks-MacBook-Pro Prateek % kafka-console-consumer --topic test-topic --bootstrap-server localhost:9092 --from-beginning 
{"name":"Prateek Ashtikar", "age": 34, "gender": "Male"}
{"name":"Laxmi Ashtikar", "age": 63, "gender": "Female"}
```
