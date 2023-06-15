#!/bin/sh
set -e

version="1.9.16"
ANT_DOWNLOAD_SHA512="b9324cffeb5b113fa289126db1408b9a0125757b598d763f076fc5deec97fb43f27979974cadcac79b6573d84dcb2d1d5bf59b7972fb2abe5ed3d9fed445b04e"

if [ ! -d "/tmp/apache-ant-${version}" ]; then
  wget "https://dlcdn.apache.org/ant/binaries/apache-ant-${version}-bin.zip" -O "/tmp/apache-ant-${version}-bin.zip"
  echo "${ANT_DOWNLOAD_SHA512} /tmp/apache-ant-${version}-bin.zip" | sha512sum --check -
  unzip "/tmp/apache-ant-${version}-bin.zip" -d /tmp
fi

"/tmp/apache-ant-${version}/bin/ant" "$@"
