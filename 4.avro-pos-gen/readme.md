# Producing AVRO Messages

- Create Topic

```sh
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic pos-topic
Created topic pos-topic.
```


- Consume Messages:

```sh
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic avro-pos-topic
Created topic avro-pos-topic.
prateekashtikar@Prateeks-MacBook-Pro 30.1.1-jre % kafka-avro-console-consumer --bootstrap-server localhost:9092 --topic avro-pos-topic --from-beginning --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer --property print.key=true --property key.separator=":"
STR7443:{"InvoiceNumber":{"string":"1428583"},"CreatedTime":{"long":1660851059057},"CustomerCardNo":{"string":"7587821520"},"TotalAmount":{"double":6022.0},"NumberOfItems":{"int":3},"PaymentMethod":{"string":"CASH"},"TaxableAmount":{"double":6022.0},"CGST":{"double":150.55},"SGST":{"double":150.55},"CESS":{"double":7.5275},"StoreID":{"string":"STR7443"},"PosID":{"string":"POS394"},"CashierID":{"string":"OAS813"},"CustomerType":{"string":"NONPRIME"},"DeliveryType":{"string":"TAKEAWAY"},"DeliveryAddress":null,"InvoiceLineItems":[{"ItemCode":{"string":"243"},"ItemDescription":{"string":"Folding table"},"ItemPrice":{"double":738.0},"ItemQty":{"int":2},"TotalValue":{"double":1476.0}},{"ItemCode":{"string":"608"},"ItemDescription":{"string":"Pleated Drapes"},"ItemPrice":{"double":1684.0},"ItemQty":{"int":1},"TotalValue":{"double":1684.0}},{"ItemCode":{"string":"418"},"ItemDescription":{"string":"Wing chair"},"ItemPrice":{"double":1431.0},"ItemQty":{"int":2},"TotalValue":{"double":2862.0}}]}
STR2699:{"InvoiceNumber":{"string":"77764124"},"CreatedTime":{"long":1660851061415},"CustomerCardNo":{"string":"7475384243"},"TotalAmount":{"double":7108.0},"NumberOfItems":{"int":3},"PaymentMethod":{"string":"CASH"},"TaxableAmount":{"double":7108.0},"CGST":{"double":177.70000000000002},"SGST":{"double":177.70000000000002},"CESS":{"double":8.885},"StoreID":{"string":"STR2699"},"PosID":{"string":"POS792"},"CashierID":{"string":"OAS152"},"CustomerType":{"string":"PRIME"},"DeliveryType":{"string":"HOME-DELIVERY"},"DeliveryAddress":{"com.example.demo.model.DeliveryAddress":{"AddressLine":{"string":"644-1102 Quam, Road"},"City":{"string":"Muzaffarnagar"},"State":{"string":"Uttar Pradesh"},"PinCode":{"string":"513402"},"ContactNumber":{"string":"7979432420"}}},"InvoiceLineItems":[{"ItemCode":{"string":"373"},"ItemDescription":{"string":"Latex Mattress"},"ItemPrice":{"double":1313.0},"ItemQty":{"int":2},"TotalValue":{"double":2626.0}},{"ItemCode":{"string":"628"},"ItemDescription":{"string":"Window Scarf"},"ItemPrice":{"double":1774.0},"ItemQty":{"int":1},"TotalValue":{"double":1774.0}},{"ItemCode":{"string":"343"},"ItemDescription":{"string":"Massage chair"},"ItemPrice":{"double":1354.0},"ItemQty":{"int":2},"TotalValue":{"double":2708.0}}]}
```

<img width="1344" alt="Screenshot 2022-08-19 at 1 03 47 AM" src="https://user-images.githubusercontent.com/54174687/185479292-5f3a575e-3cfa-464f-99c5-17b782bd7048.png">

<img width="1307" alt="Screenshot 2022-08-19 at 1 06 22 AM" src="https://user-images.githubusercontent.com/54174687/185479631-ad067aca-0b67-48ad-87e4-96fbd820e73c.png">


