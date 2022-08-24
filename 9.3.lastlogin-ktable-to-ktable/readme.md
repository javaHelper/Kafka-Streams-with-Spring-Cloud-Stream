# KStream To KTable

```
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic user-master
Created topic user-master.

kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic user-login
Created topic user-login.

kafka-console-producer --bootstrap-server localhost:9092 --topic user-master \
--property parse.key=true --property key.separator=":"
>100001:{"UserName": "Prashant", "LoginID": "100001", "LastLogin": 1550150109302}
100009:{"UserName": "Alisha", "LoginID": "100009", "LastLogin": 1550150280409}
100087:{"UserName": "Abdul", "LoginID": "100087", "LastLogin": 1550150290305}
```

<img width="1307" alt="Screenshot 2022-08-24 at 1 40 20 PM" src="https://user-images.githubusercontent.com/54174687/186366240-2b729bcf-a107-4750-90be-ba2ed154b3d9.png">

```
kafka-console-producer --bootstrap-server localhost:9092 --topic user-login --property parse.key=true --property key.separator=":"
>100001:{"LoginID": "100001", "CreatedTime": 1550150291000}
>100087:{"LoginID": "100087", "CreatedTime": 1550150580000}
```
