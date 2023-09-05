#!/bin/sh
source ./licenses.sh
export CLASSPATH=$CLASSPATH:build/libs/spring-petclinic-3.1.0.jar
export OTEL_SERVICE_NAME=petclinic-otel
export OTEL_METRIC_EXPORT_INTERVAL=5000
export OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE=DELTA
export OTEL_EXPORTER_OTLP_METRICS_DEFAULT_HISTOGRAM_AGGREGATION=BASE2_EXPONENTIAL_BUCKET_HISTOGRAM
export OTEL_LOGS_EXPORTER=otlp
export OTEL_EXPORTER_OTLP_ENDPOINT=https://otlp.nr-data.net:4317
export OTEL_EXPORTER_OTLP_COMPRESSION=gzip
export OTEL_EXPERIMENTAL_EXPORTER_OTLP_RETRY_ENABLED=true
export OTEL_RESOURCE_ATTRIBUTES=service.instance.id=1234
export OTEL_EXPERIMENTAL_RESOURCE_DISABLED_KEYS=process.command_line,process.command_args
export OTEL_ATTRIBUTE_VALUE_LENGTH_LIMIT=4095
#Configure based on your local setup
export OTEL_AGENT_PATH=./otel
java -javaagent:${OTEL_AGENT_PATH}/opentelemetry-javaagent.jar -jar build/libs/spring-petclinic-3.1.0.jar
