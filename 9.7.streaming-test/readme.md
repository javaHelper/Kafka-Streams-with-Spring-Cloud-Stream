# Functional Style of Converting Stream Listeners

```
kafka-console-producer --broker-list localhost:9092 --topic input-topic
>Hello
>Prateek
>
```

```
kafka-console-consumer --topic output-topic --from-beginning --bootstrap-server localhost:9092
HELLO
PRATEEK
```
