#!/bin/sh
set -e

source=/backup.tgz
bucket="$1"
target="$bucket/grafana_`date -u +'%Y%m%dT%H%M%S'`.tar.gz"

grafcli backup remote/local ${source}

aws s3 cp ${source} ${target}