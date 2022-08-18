# Producing JSON Messages

- Create Topic

```sh
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic pos-topic
Created topic pos-topic.
```

- Consumer 

```sh
kafka-console-consumer --bootstrap-server localhost:9092 --topic pos-topic --from-beginning --property print.key=true --property key.separator=":" 
STR7443:{"InvoiceNumber":"30568494","CreatedTime":1660849483458,"StoreID":"STR7443","PosID":"POS333","CashierID":"OAS883","CustomerType":"NONPRIME","CustomerCardNo":"5483488802","TotalAmount":5890.0,"NumberOfItems":3,"PaymentMethod":"CASH","TaxableAmount":5890.0,"CGST":147.25,"SGST":147.25,"CESS":7.3625,"DeliveryType":"HOME-DELIVERY","DeliveryAddress":{"AddressLine":"5418 Magna. Rd.","City":"Chennai","State":"Tamil Nadu","PinCode":"386032","ContactNumber":"6557358508"},"InvoiceLineItems":[{"ItemCode":"383","ItemDescription":"Innerspring Mattress","ItemPrice":655.0,"ItemQty":2,"TotalValue":1310.0},{"ItemCode":"298","ItemDescription":"Bardic chair","ItemPrice":1649.0,"ItemQty":2,"TotalValue":3298.0},{"ItemCode":"603","ItemDescription":"Sheer Curtains","ItemPrice":1282.0,"ItemQty":1,"TotalValue":1282.0}]}
STR2699:{"InvoiceNumber":"48890927","CreatedTime":1660849485179,"StoreID":"STR2699","PosID":"POS773","CashierID":"OAS568","CustomerType":"NONPRIME","CustomerCardNo":"9327106277","TotalAmount":8401.0,"NumberOfItems":3,"PaymentMethod":"CASH","TaxableAmount":8401.0,"CGST":210.025,"SGST":210.025,"CESS":10.50125,"DeliveryType":"TAKEAWAY","InvoiceLineItems":[{"ItemCode":"268","ItemDescription":"Floating shelf","ItemPrice":1894.0,"ItemQty":2,"TotalValue":3788.0},{"ItemCode":"498","ItemDescription":"Carving knifes","ItemPrice":1424.0,"ItemQty":2,"TotalValue":2848.0},{"ItemCode":"578","ItemDescription":"Goblet Pleat Curtains","ItemPrice":1765.0,"ItemQty":1,"TotalValue":1765.0}]}
STR1534:{"InvoiceNumber":"4239895","CreatedTime":1660849486188,"StoreID":"STR1534","PosID":"POS135","CashierID":"OAS285","CustomerType":"PRIME","CustomerCardNo":"5582740626","TotalAmount":4342.0,"NumberOfItems":2,"PaymentMethod":"CARD","TaxableAmount":4342.0,"CGST":108.55000000000001,"SGST":108.55000000000001,"CESS":5.4275,"DeliveryType":"TAKEAWAY","InvoiceLineItems":[{"ItemCode":"583","ItemDescription":"Tab Top Curtains","ItemPrice":1329.0,"ItemQty":2,"TotalValue":2658.0},{"ItemCode":"273","ItemDescription":"Bedroom set","ItemPrice":842.0,"ItemQty":2,"TotalValue":1684.0}]}
STR7449:{"InvoiceNumber":"94639212","CreatedTime":1660849487195,"StoreID":"STR7449","PosID":"POS728","CashierID":"OAS323","CustomerType":"PRIME","CustomerCardNo":"5301477438","TotalAmount":1485.0,"NumberOfItems":1,"PaymentMethod":"CASH","TaxableAmount":1485.0,"CGST":37.125,"SGST":37.125,"CESS":1.85625,"DeliveryType":"TAKEAWAY","InvoiceLineItems":[{"ItemCode":"423","ItemDescription":"Quilt","ItemPrice":1485.0,"ItemQty":1,"TotalValue":1485.0}]}
```

<img width="1299" alt="Screenshot 2022-08-19 at 12 37 03 AM" src="https://user-images.githubusercontent.com/54174687/185474928-56b280d3-97eb-413b-983c-d1d223810652.png">

<img width="1341" alt="Screenshot 2022-08-19 at 12 38 29 AM" src="https://user-images.githubusercontent.com/54174687/185474939-0ca7db55-9cc7-416f-bf07-07d49ee9b545.png">
