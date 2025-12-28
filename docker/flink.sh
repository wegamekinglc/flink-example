docker network create flink-network
docker run -d --rm --name=jobmanager --network flink-network --publish 8081:8081 --env FLINK_PROPERTIES="jobmanager.rpc.address: jobmanager" flink:latest jobmanager
docker run -d --rm --name=taskmanager --network flink-network --env FLINK_PROPERTIES="jobmanager.rpc.address: jobmanager"  flink:latest taskmanager