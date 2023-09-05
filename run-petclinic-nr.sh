#!/bin/sh
source ./licenses.sh
export CLASSPATH=$CLASSPATH:./build/libs/spring-petclinic-3.1.0.jar
export NEW_RELIC_APP_NAME="petclinic-app"
export NR_AGENT_PATH=./newrelic
java -javaagent:${NR_AGENT_PATH}/newrelic.jar -jar ./build/libs/spring-petclinic-3.1.0.jar
