# Processing JSON Message Stream

- Make sure you first start this project and then start the json-pos-gen project

```sh
kafka-avro-console-consumer --bootstrap-server localhost:9092 --topic loyalty-topic --from-beginning --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer --property print.key=true --property key.separator=":"
STR7255:{"InvoiceNumber":{"string":"37276226"},"CustomerCardNo":{"string":"1682244797"},"TotalAmount":{"double":8976.0},"EarnedLoyaltyPoints":{"double":179.52}}
STR7449:{"InvoiceNumber":{"string":"24821067"},"CustomerCardNo":{"string":"3453134392"},"TotalAmount":{"double":5936.0},"EarnedLoyaltyPoints":{"double":118.72}}
STR5646:{"InvoiceNumber":{"string":"63156854"},"CustomerCardNo":{"string":"8109010950"},"TotalAmount":{"double":740.0},"EarnedLoyaltyPoints":{"double":14.8}}
STR5646:{"InvoiceNumber":{"string":"24067479"},"CustomerCardNo":{"string":"2220404140"},"TotalAmount":{"double":2708.0},"EarnedLoyaltyPoints":{"double":54.160000000000004}}
STR2699:{"InvoiceNumber":{"string":"27613390"},"CustomerCardNo":{"string":"6797767929"},"TotalAmount":{"double":740.0},"EarnedLoyaltyPoints":{"double":14.8}}
STR7255:{"InvoiceNumber":{"string":"7135400"},"CustomerCardNo":{"string":"1682244797"},"TotalAmount":{"double":801.0},"EarnedLoyaltyPoints":{"double":16.02}}
```

```sh
kafka-avro-console-consumer --bootstrap-server localhost:9092 --topic hadoop-sink-topic --from-beginning --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer --property print.key=true --property key.separator=":"
STR7255:{"InvoiceNumber":{"string":"37276226"},"CreatedTime":{"long":1660853676949},"StoreID":{"string":"STR7255"},"PosID":{"string":"POS115"},"CustomerType":{"string":"PRIME"},"PaymentMethod":{"string":"CASH"},"DeliveryType":{"string":"HOME-DELIVERY"},"City":{"string":"Chapra"},"State":{"string":"Bihar"},"PinCode":{"string":"386153"},"ItemCode":{"string":"633"},"ItemDescription":{"string":"Cafe Curtains"},"ItemPrice":{"double":796.0},"ItemQty":{"int":2},"TotalValue":{"double":1592.0}}
STR7255:{"InvoiceNumber":{"string":"37276226"},"CreatedTime":{"long":1660853676949},"StoreID":{"string":"STR7255"},"PosID":{"string":"POS115"},"CustomerType":{"string":"PRIME"},"PaymentMethod":{"string":"CASH"},"DeliveryType":{"string":"HOME-DELIVERY"},"City":{"string":"Chapra"},"State":{"string":"Bihar"},"PinCode":{"string":"386153"},"ItemCode":{"string":"508"},"ItemDescription":{"string":"Kitchen knife"},"ItemPrice":{"double":2483.0},"ItemQty":{"int":1},"TotalValue":{"double":2483.0}}
STR7255:{"InvoiceNumber":{"string":"37276226"},"CreatedTime":{"long":1660853676949},"StoreID":{"string":"STR7255"},"PosID":{"string":"POS115"},"CustomerType":{"string":"PRIME"},"PaymentMethod":{"string":"CASH"},"DeliveryType":{"string":"HOME-DELIVERY"},"City":{"string":"Chapra"},"State":{"string":"Bihar"},"PinCode":{"string":"386153"},"ItemCode":{"string":"378"},"ItemDescription":{"string":"Air Bed"},"ItemPrice":{"double":2263.0},"ItemQty":{"int":2},"TotalValue":{"double":4526.0}}
STR7255:{"InvoiceNumber":{"string":"37276226"},"CreatedTime":{"long":1660853676949},"StoreID":{"string":"STR7255"},"PosID":{"string":"POS115"},"CustomerType":{"string":"PRIME"},"PaymentMethod":{"string":"CASH"},"DeliveryType":{"string":"HOME-DELIVERY"},"City":{"string":"Chapra"},"State":{"string":"Bihar"},"PinCode":{"string":"386153"},"ItemCode":{"string":"653"},"ItemDescription":{"string":"Browning tray"},"ItemPrice":{"double":375.0},"ItemQty":{"int":1},"TotalValue":{"double":375.0}}
STR7449:{"InvoiceNumber":{"string":"24821067"},"CreatedTime":{"long":1660853678615},"StoreID":{"string":"STR7449"},"PosID":{"string":"POS215"},"CustomerType":{"string":"PRIME"},"PaymentMethod":{"string":"CARD"},"DeliveryType":{"string":"HOME-DELIVERY"},"City":{"string":"Champdani"},"State":{"string":"West Bengal"},"PinCode":{"string":"680616"},"ItemCode":{"string":"638"},"ItemDescription":{"string":"Baster"},"ItemPrice":{"double":1214.0},"ItemQty":{"int":1},"TotalValue":{"double":1214.0}}
STR7449:{"InvoiceNumber":{"string":"24821067"},"CreatedTime":{"long":1660853678615},"StoreID":{"string":"STR7449"},"PosID":{"string":"POS215"},"CustomerType":{"string":"PRIME"},"PaymentMethod":{"string":"CARD"},"DeliveryType":{"string":"HOME-DELIVERY"},"City":{"string":"Champdani"},"State":{"string":"West Bengal"},"PinCode":{"string":"680616"},"ItemCode":{"string":"258"},"ItemDescription":{"string":"Closet"},"ItemPrice":{"double":1687.0},"ItemQty":{"int":2},"TotalValue":{"double":3374.0}}
```

<img width="657" alt="Screenshot 2022-08-19 at 1 53 42 AM" src="https://user-images.githubusercontent.com/54174687/185487972-7595c5ef-66cb-483c-b98b-cddad75b9207.png">
