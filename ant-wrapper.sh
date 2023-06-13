#!/bin/sh

version="1.9.16"

if [ ! -d "/tmp/apache-ant-${version}" ]; then
  wget "https://dlcdn.apache.org/ant/binaries/apache-ant-${version}-bin.zip" -O "/tmp/apache-ant-${version}-bin.zip"
  unzip "/tmp/apache-ant-${version}-bin.zip" -d /tmp
fi

for i in $*;
do
    params=" $params $i"
done

"/tmp/apache-ant-${version}/bin/ant" $params
