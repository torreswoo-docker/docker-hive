

build-hadoop-base:
	docker build -t bde2020/hadoop-base:2.0.0-hadoop2.7.4-java8 ./hadoop-base/
build-hive:
	docker build -t bde2020/hive:2.3.2-postgresql-metastore ./hive/
build-hive-metastore:
	docker build -t bde2020/hive-metastore-postgresql:2.3.0 ./hive-metastore-postgresql/