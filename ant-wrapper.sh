#!/bin/sh
set -e

version="1.10.13"
ANT_DOWNLOAD_SHA512="347e964db73d1f8e9fe110f135625920e09c8c9997e9950c405cfeec60b70750044a91ef0535d76d6f8e023de0788f2619be76fd91b7a80be9a6b569a16cc3e8"

if [ ! -d "/tmp/apache-ant-${version}" ]; then
  wget "https://dlcdn.apache.org/ant/binaries/apache-ant-${version}-bin.zip" -O "/tmp/apache-ant-${version}-bin.zip"
  echo "${ANT_DOWNLOAD_SHA512} /tmp/apache-ant-${version}-bin.zip" | sha512sum --check -
  unzip "/tmp/apache-ant-${version}-bin.zip" -d /tmp
fi

"/tmp/apache-ant-${version}/bin/ant" "$@"
