#!/usr/bin/env bash

cd ~
cd repo/demo/
screen java -jar target/demo-0.0.1-SNAPSHOT.jar --server.port=8080
