#!/bin/bash

ES_HOST=${ES_HOST:-$DB_PORT_9200_TCP_ADDR}
ES_PORT=${ES_PORT:-$DB_PORT_9200_TCP_PORT}
ES_SCHEME=${ES_SCHEME:-http}
KIBANA_CONFIG_PATH=/home/kibana-$KIBANA_VERSION/config/kibana.yml
#Update kibana config
sed -i '/elasticsearch_url:/c\elasticsearch_url: "'$ES_SCHEME'://'$ES_HOST':'$ES_PORT'"' ${KIBANA_CONFIG_PATH}

#Start Kibana
/home/kibana-$KIBANA_VERSION/bin/kibana