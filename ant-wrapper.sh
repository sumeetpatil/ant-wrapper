#!/bin/sh
set -e

version="1.9.16"

if [ ! -d "/tmp/apache-ant-${version}" ]; then
  wget "https://dlcdn.apache.org/ant/binaries/apache-ant-${version}-bin.zip" -O "/tmp/apache-ant-${version}-bin.zip"
  unzip "/tmp/apache-ant-${version}-bin.zip" -d /tmp
fi

"/tmp/apache-ant-${version}/bin/ant" $@
