
# Below needed for windows
netsh interface portproxy add v4tov4 listenport=9092 listenaddress=0.0.0.0 connectport=9092 connectaddress=<your-ip>

netsh interface portproxy add v4tov4 listenport=8081 listenaddress=0.0.0.0 connectport=8081 connectaddress=<your-ip>

# Start Confluent
confluent local services start

# Create Topic
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic avro-pos-topic

# Read Topic
kafka-avro-console-consumer --bootstrap-server localhost:9092 --topic avro-pos-topic --from-beginning --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer --property print.key=true --property key.separator=":"

# Stop Confluent
confluent local services stop

# Destroy confluent
confluent local destroy