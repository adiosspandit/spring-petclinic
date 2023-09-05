#!/bin/sh
source ./licenses.sh
export CLASSPATH=$CLASSPATH:./libs/spring-petclinic-3.1.0.jar:./libs/spring-petclinic-3.1.0-plain.jar
export NEW_RELIC_APP_NAME="petclinic-app"
export NR_AGENT_PATH=../newrelic
java -javaagent:${NR_AGENT_PATH}/newrelic.jar -jar ./spring-petclinic-3.1.0.jar
