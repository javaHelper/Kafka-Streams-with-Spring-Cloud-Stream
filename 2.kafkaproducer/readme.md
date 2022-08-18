# Simple RESTful Kafka Producer

POST ->

```sh
curl --location --request POST 'http://localhost:8080/post' \
--header 'Content-Type: application/json' \
--data-raw '{
    "topic": "users",
    "key": "101",
    "value": "John Doe"
}'
```

Response:

```sh
Success - Message for key 101 is sent to Kafka Topic: users
```


- Create Topic

```sh
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic users
Created topic users.
```

- Consumer

```sh
kafka-console-consumer --bootstrap-server localhost:9092 --topic users --from-beginning --property print.key=true --property key.separator=":"
101:John Doe
```

<img width="1303" alt="Screenshot 2022-08-19 at 12 18 39 AM" src="https://user-images.githubusercontent.com/54174687/185471821-04de961f-b231-4615-9a5b-07ff34eee8d4.png">

<img width="1335" alt="Screenshot 2022-08-19 at 12 21 56 AM" src="https://user-images.githubusercontent.com/54174687/185471976-88f8e5b2-ff7c-41bb-b8bc-007b741adfaf.png">

