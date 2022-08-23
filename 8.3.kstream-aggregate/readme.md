# Aggregation Challenges

```sh
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic employees-topic
Topic 'employees-topic' created.

kafka-avro-console-producer --broker-list localhost:9092 --topic employees-topic \
--property value.schema='{"namespace": "com.example.demo.model","type": "record","name": "Employee","fields": [{"name": "id","type": "string"},{"name": "name","type": "string"},{"name": "department","type": "string"},{"name": "salary","type":"int"}]}'
{"id": "101", "name": "Prashant", "department": "engineering", "salary": 5000}
{"id": "102", "name": "John", "department": "accounts", "salary": 8000}
{"id": "103", "name": "Abdul", "department": "engineering", "salary": 3000}
{"id": "104", "name": "Melinda", "department": "support", "salary": 7000}
{"id": "105", "name": "Jimmy", "department": "support", "salary": 6000}
```

<img width="1329" alt="Screenshot 2022-08-24 at 12 56 52 AM" src="https://user-images.githubusercontent.com/54174687/186248997-70b294e9-3044-441c-a036-7346548ff544.png">
