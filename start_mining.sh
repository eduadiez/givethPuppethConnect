#!/bin/bash

NUM_KEYSTORE=$(ls -1 data/keystore/ | wc -l);
if (( $NUM_KEYSTORE == "0" )) ; then
echo "No etherbase set and no accounts found as default";
docker-compose down
docker-compose run --rm giveth_puppeth_network --datadir=/root/.giveth account new
else
    docker-compose up -d
    sleep 5
    docker-compose run --rm giveth_puppeth_network --exec "miner.start(1)" attach /root/.giveth/geth.ipc
fi