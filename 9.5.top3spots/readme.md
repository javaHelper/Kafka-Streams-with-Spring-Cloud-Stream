# 

```
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic active-inventories
Topic 'active-inventories' created.

kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic ad-clicks
Topic 'ad-clicks' created.

prateekashtikar@Prateeks-MacBook-Pro ~ % kafka-console-producer --bootstrap-server localhost:9092 --topic active-inventories --property parse.key=true --property key.separator=":"
>1001:{"InventoryID": "1001", "NewsType": "Sports"}
1002:{"InventoryID": "1002", "NewsType": "Politics"}
1003:{"InventoryID": "1003", "NewsType": "LocalNews"}
1004:{"InventoryID": "1004", "NewsType": "WorldNews"}
1005:{"InventoryID": "1005", "NewsType": "Health"}
1006:{"InventoryID": "1006", "NewsType": "Lifestyle"}
1007:{"InventoryID": "1007", "NewsType": "Literature"}
1008:{"InventoryID": "1008", "NewsType": "Education"}
1009:{"InventoryID": "1009", "NewsType": "Social"}
1010:{"InventoryID": "1010", "NewsType": "Business"}


kafka-console-producer --bootstrap-server localhost:9092 --topic ad-clicks --property parse.key=true --property key.separator=":"
>1001:{"InventoryID": "1001"}
1002:{"InventoryID": "1002"}
1003:{"InventoryID": "1003"}
1004:{"InventoryID": "1004"}
1004:{"InventoryID": "1004"}
1002:{"InventoryID": "1002"}
```

