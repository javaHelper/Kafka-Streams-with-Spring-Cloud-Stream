
# Below needed for windows only
netsh interface portproxy add v4tov4 listenport=9092 listenaddress=0.0.0.0 connectport=9092 connectaddress=<your-ip>

# Start Confluent
confluent local services start

# Create Topic
kafka-topics --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --create --topic stock-tick-topic

# Create Producer
kafka-console-producer --topic stock-tick-topic --broker-list localhost:9092 --property parse.key=true --property key.separator=":"

# Stop Confluent
confluent local services stop

# Destroy Confluent
confluent local destroy