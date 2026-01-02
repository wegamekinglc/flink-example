 docker run -d -p 9092:9092 --name broker apache/kafka:latest
 cd /opt/kafka/bin ||
 ./kafka-console-producer.sh --bootstrap-server localhost:9092 --topic test-topic
 ./kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test-topic --from-beginning