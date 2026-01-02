docker network create flink-network
docker run -d --rm --name=jobmanager --network flink-network --publish 8081:8081 --env FLINK_PROPERTIES="jobmanager.rpc.address: jobmanager" apache/flink:1.20-java17 jobmanager
docker run -d --rm --name=taskmanager --network flink-network --env FLINK_PROPERTIES="jobmanager.rpc.address: jobmanager"  apache/flink:1.20-java17 taskmanager