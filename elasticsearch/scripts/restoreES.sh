#!/bin/bash

curl -XPOST http://127.0.0.1:9200/_snapshot/docker_backup/snapshot_3/_restore
