# KStream to KTable Join

```
kafka-console-producer --bootstrap-server localhost:9092 --topic active-inventories \
--property parse.key=true --property key.separator=":"
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
```

```
kafka-console-producer --bootstrap-server localhost:9092 --topic ad-clicks \
--property parse.key=true --property key.separator=":"
>1001:{"InventoryID": "1001"}
1002:{"InventoryID": "1002"}
1003:{"InventoryID": "1003"}
1004:{"InventoryID": "1004"}
1004:{"InventoryID": "1004"}
1005:{"InventoryID": "1005"}
1006:{"InventoryID": "1006"}
1007:{"InventoryID": "1007"}
1008:{"InventoryID": "1008"}
1009:{"InventoryID": "1009"}
1010:{"InventoryID": "1010"}
```
----------

<img width="1303" alt="Screenshot 2022-08-24 at 2 00 34 PM" src="https://user-images.githubusercontent.com/54174687/186370193-8504d53b-4717-4eac-9962-9f307b08514c.png">
