# Deep Dive into KTable

```sh
kafka-topics --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --create --topic stock-tick-topic
Created topic stock-tick-topic.

prateekashtikar@Prateeks-MacBook-Pro ~ % kafka-console-producer --topic stock-tick-topic --broker-list localhost:9092 --property parse.key=true --property key.separator=":"
>HDFCBANK:2120
>HDFCBANK:2150
>HDFCBANK:2180
>TCS:2920
>HDFCBANK:3000
>
```

<img width="1326" alt="Screenshot 2022-08-19 at 3 08 45 PM" src="https://user-images.githubusercontent.com/54174687/185591244-5ef69d4b-de7d-45ef-bf25-25f5eee438f0.png">
