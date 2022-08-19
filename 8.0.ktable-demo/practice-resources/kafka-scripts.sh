

netsh interface portproxy add v4tov4 listenport=9092 listenaddress=0.0.0.0 connectport=9092 connectaddress=<your-ip>

confluent local services start

kafka-topics --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --create --topic stock-tick-topic

kafka-console-producer --topic stock-tick-topic --broker-list localhost:9092 --property parse.key=true --property key.separator=":"

confluent local services stop
confluent local destroy