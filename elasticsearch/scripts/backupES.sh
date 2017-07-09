#!/bin/bash

curl -XPUT http://127.0.0.1:9200/_snapshot/docker_backup/snapshot_3?wait_for_completion=true
