

netsh interface portproxy add v4tov4 listenport=9092 listenaddress=0.0.0.0 connectport=9092 connectaddress=<your-ip>

# Below command not working with
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic users

kafka-console-producer --broker-list localhost:9092 --topic users

kafka-console-consumer --bootstrap-server localhost:9092 --topic users --from-beginning