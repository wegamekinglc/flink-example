from kafka import KafkaConsumer

consumer = KafkaConsumer(bootstrap_servers="127.0.0.1:9092", auto_offset_reset="earliest")
consumer.subscribe(["test-topic"])

for msg in consumer:
    print(f"{msg}: {msg.value}")
