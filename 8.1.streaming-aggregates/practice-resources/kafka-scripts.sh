
# For windows only
netsh interface portproxy add v4tov4 listenport=9092 listenaddress=0.0.0.0 connectport=9092 connectaddress=<your-ip>

# Start Confluent
confluent local services start

# Create Topic
kafka-topics --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --create --topic streaming-words-topic

# Consumer
kafka-console-producer --topic streaming-words-topic --broker-list localhost:9092

#
confluent local services stop
confluent local destroy