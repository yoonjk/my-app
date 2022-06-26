docker exec -it kafka kafka-topics --bootstrap-server localhost:9092 --list

docker exec -it kafka kafka-topics --bootstrap-server localhost:9092 --create --topic customer --replication-factor 1 --partitions 1
