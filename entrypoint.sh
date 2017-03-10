#!/bin/bash
set -e

if [ "$1" = 'spark' ]; then
    ./$SPARK_HOME/bin/spark-class "org.apache.spark.deploy.master.Master"
fi

if [ "$1" = 'zepplin' ]; then
    ./$ZEPPELIN_HOME/bin/zeppelin.sh
fi

exec "$@"
