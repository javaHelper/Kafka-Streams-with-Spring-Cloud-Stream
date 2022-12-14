

netsh interface portproxy add v4tov4 listenport=9092 listenaddress=0.0.0.0 connectport=9092 connectaddress=<your-ip>

confluent local services start

kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic simple-invoice-topic

kafka-console-producer --bootstrap-server localhost:9092 --topic simple-invoice-topic --property parse.key=true --property key.separator=":"

confluent local destroy