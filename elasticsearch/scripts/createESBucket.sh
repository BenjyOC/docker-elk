#!/bin/bash

curl -XPUT 'http://localhost:9200/_snapshot/docker_backup' -H 'Content-Type: application/json' -d '{
    "type": "fs",
    "settings": {
        "location": "/usr/share/elasticsearch/backup",
        "compress": true
    }
}'
