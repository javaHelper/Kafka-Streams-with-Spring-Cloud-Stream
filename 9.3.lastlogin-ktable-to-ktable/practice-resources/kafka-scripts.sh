

netsh interface portproxy add v4tov4 listenport=9092 listenaddress=0.0.0.0 connectport=9092 connectaddress=<your-ip>

confluent local services start

kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic user-master

kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic user-login

kafka-console-producer --bootstrap-server localhost:9092 --topic user-master \
--property parse.key=true --property key.separator=":"

kafka-console-producer --bootstrap-server localhost:9092 --topic user-login \
--property parse.key=true --property key.separator=":"

confluent local destroy