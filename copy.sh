#!/bin/bash

./gradlew build 
scp "build/libs/dpvn-eureka-server-0.0.1-SNAPSHOT.jar" root@103.1.239.43:/Users/reportnew/eureka

echo "Build and Copy progress completed."
