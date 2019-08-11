#!/usr/bin/env bash

TOPICS=('job-status' 'data-ingest-file-converter' 'file-converter-schema-extractor' 'schema-extractor-file-converter')

TOPICS_EXT=()

for topic in ${TOPICS[@]}
do
  TOPIC_EXT+=(${topic})
  TOPIC_EXT+=(${topic}-failure)
done

for t in ${TOPIC_EXT[@]}
do
  echo $t
done

wget http://apache.claz.org/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.7.tgz

tar xvf spark-2.4.3-bin-hadoop2.7.tgz --directory ~/

cp -r spark-2.4.3-bin-hadoop2.7 ~/spark

./sbin/start-slave.sh -h 192.168.22.12 spark://192.168.22.10:7077


mongod --replSet "rs0" --bind_ip localhost,<hostname(s)|ip address(es)