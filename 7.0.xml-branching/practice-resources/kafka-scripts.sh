
# Below needed for windows only
netsh interface portproxy add v4tov4 listenport=9092 listenaddress=0.0.0.0 connectport=9092 connectaddress=<your-ip>
netsh interface portproxy add v4tov4 listenport=8081 listenaddress=0.0.0.0 connectport=8081 connectaddress=<your-ip>

# Start Confluent
confluent local services start

# Create Topic
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic xml-order-topic
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic error-topic
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic india-orders
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic abroad-orders

# List Topics
kafka-console-producer --topic xml-order-topic --broker-list localhost:9092

# Consumer
kafka-console-consumer --bootstrap-server localhost:9092 --topic india-orders --from-beginning --property print.key=true --property key.separator=":"
kafka-console-consumer --bootstrap-server localhost:9092 --topic abroad-orders --from-beginning --property print.key=true --property key.separator=":"
kafka-console-consumer --bootstrap-server localhost:9092 --topic error-topic --from-beginning --property print.key=true --property key.separator=":"

# Stop Cofluent
confluent local services stop

# Destroy Confluent
confluent local destroy