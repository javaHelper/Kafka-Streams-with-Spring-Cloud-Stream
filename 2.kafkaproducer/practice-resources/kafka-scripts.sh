
# Below lines appiles to windows
netsh interface portproxy add v4tov4 listenport=9092 listenaddress=0.0.0.0 connectport=9092 connectaddress=<your-ip>

# Start Confluent Locally
confluent local services start

# Create Topic
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic users

# Consume Topic
kafka-console-consumer --bootstrap-server localhost:9092 --topic users --from-beginning --property print.key=true --property key.separator=":"

# Stop the Confluent
confluent local services stop

# Delete All Setup
confluent local destroy