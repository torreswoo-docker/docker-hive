

build-hadoop-base:
	docker build -t bde2020/hadoop-base:2.0.0-hadoop2.7.4-java8 ./hadoop-base/
build-hadoop-namenode:
	docker build -t bde2020/hadoop-namenode:2.0.0-hadoop2.7.4-java8 ./hadoop-namenode/
build-hadoop-datanode:
	docker build -t bde2020/hadoop-datanode:2.0.0-hadoop2.7.4-java8 ./hadoop-datanode/

build-hive:
	docker build -t bde2020/hive:2.3.2-postgresql-metastore ./hive/
build-hive-metastore:
	docker build -t bde2020/hive-metastore-postgresql:2.3.0 ./hive-metastore-postgresql/
build-prestodb:
	docker build -t shawnzhu/prestodb:0.181 ./presto/

build.hadoop: build-hadoop-base build-hadoop-namenode build-hadoop-datanode
	@ echo " build hadoop images"
build.all: build.hadoop build-hive build-hive-metastore build-prestodb
	@ echo " build all images"