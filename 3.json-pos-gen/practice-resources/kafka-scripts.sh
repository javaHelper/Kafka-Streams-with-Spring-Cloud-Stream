
# Below Line only for windows
netsh interface portproxy add v4tov4 listenport=9092 listenaddress=0.0.0.0 connectport=9092 connectaddress=<your-ip>

# Start Confluent
confluent local services start

# Create Topic
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic pos-topic

# Read Kafka Topic
kafka-console-consumer --bootstrap-server localhost:9092 --topic pos-topic --from-beginning --property print.key=true --property key.separator=":"

# Stop Confluent
confluent local services stop

# Destroy Confluent
confluent local destroy