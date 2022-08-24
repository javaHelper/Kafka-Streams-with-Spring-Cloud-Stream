# KStream Joins

```
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic payment_request
WARNING: Due to limitations in metric names, topics with a period ('.') or underscore ('_') could collide. To avoid issues it is best to use either, but not both.
Created topic payment_request.

kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic payment_confirmation
WARNING: Due to limitations in metric names, topics with a period ('.') or underscore ('_') could collide. To avoid issues it is best to use either, but not both.
Created topic payment_confirmation.
```
<img width="970" alt="Screenshot 2022-08-24 at 1 23 22 PM" src="https://user-images.githubusercontent.com/54174687/186362739-b0990653-dcbf-41ba-9096-6b9ef242c7d6.png">

<img width="838" alt="Screenshot 2022-08-24 at 1 23 43 PM" src="https://user-images.githubusercontent.com/54174687/186362745-691f7d33-edab-4f1c-b259-f19856dd8e7e.png">

<img width="976" alt="Screenshot 2022-08-24 at 1 24 00 PM" src="https://user-images.githubusercontent.com/54174687/186362752-c3df90f0-1999-465e-9aa3-d7dc041d1e28.png">

<img width="946" alt="Screenshot 2022-08-24 at 1 23 11 PM" src="https://user-images.githubusercontent.com/54174687/186362712-fd07c446-8b4a-4721-b4e5-067fe8cdc353.png">
