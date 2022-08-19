# Working with XML Inputs

```sh
prateekashtikar@Prateeks-MacBook-Pro ~ % kafka-console-consumer --bootstrap-server localhost:9092 --topic india-orders --from-beginning --property print.key=true --property key.separator=":"
889925:{"orderBy":"Abdul Hamid","shipTo":{"name":"Nawab Aalam","address":"42 Park Squire","city":"Bangalore","country":"India"},"item":[{"title":"Empire Burlesque",
```

```sh
prateekashtikar@Prateeks-MacBook-Pro ~ % kafka-console-producer --topic xml-order-topic --broker-list localhost:9092
><?xml version="1.0" encoding="UTF-8"?><order order-id="889923" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="order.xsd"><order-by>John Smith</order-by><ship-to><name>Ola Nordmann</name><address>Langgt 23</address><city>4000 Stavanger</city><country>Norway</country></ship-to><item><title>Empire Burlesque</title><note>Special Edition</note><quantity>1</quantity><price>10.90</price></item><item><title>Hide your heart</title><quantity>1</quantity><price>9.90</price></item></order>

><?xml version="1.0" encoding="UTF-8"?><order order-id="889925" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="order.xsd"><order-by>Abdul Hamid</order-by><ship-to><name>Nawab Aalam</name><address>42 Park Squire</address><city>Bangalore</city><country>India</country></ship-to><item><title>Empire Burlesque</title><note>Special Edition</note><quantity>1</quantity><price>10.90</price></item><item><title>Hide your heart</title><quantity>1</quantity><price>9.90</price></item></order>

><?xml version="1.0" encoding="UTF-8"?><order order-id="889926" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="order.xsd"><order-by>Abdul Hamid<order-by><ship-to><name>Nawab Aalam</name><address>42 Park Squire</address><city>Bangalore</city><country>India</country></ship-to><item><title>Empire Burlesque</title><note>Special Edition</note><quantity>1</quantity><price>10.90</price></item><item><title>Hide your heart</title><quantity>1</quantity><price>9.90</price></item></order>

><?xml version="1.0" encoding="UTF-8"?><order order-id="889927" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="order.xsd"><order-by>Abdul Hamid</order-by><ship-to><name>Nawab Aalam</name><address>42 Park Squire</address><city></city><country>India</country></ship-to><item><title>Empire Burlesque</title><note>Special Edition</note><quantity>1</quantity><price>10.90</price></item><item><title>Hide your heart</title><quantity>1</quantity><price>9.90</price></item></order>
```

```sh
prateekashtikar@Prateeks-MacBook-Pro ~ % kafka-console-consumer --bootstrap-server localhost:9092 --topic abroad-orders --from-beginning --property print.key=true --property key.separator=":"
889923:{"orderBy":"John Smith","shipTo":{"name":"Ola Nordmann","address":"Langgt 23","city":"4000 Stavanger","country":"Norway"},"item":[{"title":"Empire Burlesque","note":"Special Edition","quantity":1,"price":10.90},{"title":"Hide your heart","note":null,"quantity":1,"price":9.90}],"orderId":"889923"}
```

```sh
prateekashtikar@Prateeks-MacBook-Pro ~ % kafka-console-consumer --bootstrap-server localhost:9092 --topic error-topic --from-beginning --property print.key=true --property key.separator=":"
ParseError:{"xmlOrderKey":null,"xmlOrderValue":"","orderTag":"ParseError","validOrder":null}
ParseError:{"xmlOrderKey":null,"xmlOrderValue":"","orderTag":"ParseError","validOrder":null}
ParseError:{"xmlOrderKey":null,"xmlOrderValue":"<?xml version=\"1.0\" encoding=\"UTF-8\"?><order order-id=\"889926\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:noNamespaceSchemaLocation=\"order.xsd\"><order-by>Abdul Hamid<order-by><ship-to><name>Nawab Aalam</name><address>42 Park Squire</address><city>Bangalore</city><country>India</country></ship-to><item><title>Empire Burlesque</title><note>Special Edition</note><quantity>1</quantity><price>10.90</price></item><item><title>Hide your heart</title><quantity>1</quantity><price>9.90</price></item></order>","orderTag":"ParseError","validOrder":null}
AddressError:{"xmlOrderKey":null,"xmlOrderValue":"<?xml version=\"1.0\" encoding=\"UTF-8\"?><order order-id=\"889927\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:noNamespaceSchemaLocation=\"order.xsd\"><order-by>Abdul Hamid</order-by><ship-to><name>Nawab Aalam</name><address>42 Park Squire</address><city></city><country>India</country></ship-to><item><title>Empire Burlesque</title><note>Special Edition</note><quantity>1</quantity><price>10.90</price></item><item><title>Hide your heart</title><quantity>1</quantity><price>9.90</price></item></order>","orderTag":"AddressError","validOrder":{"orderBy":"Abdul Hamid","shipTo":{"name":"Nawab Aalam","address":"42 Park Squire","city":"","country":"India"},"item":[{"title":"Empire Burlesque","note":"Special Edition","quantity":1,"price":10.90},{"title":"Hide your heart","note":null,"quantity":1,"price":9.90}],"orderId":"889927"}}
```
