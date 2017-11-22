#!/bin/bash
docker-compose run --rm giveth_puppeth_network --exec "miner.stop()" attach /root/.giveth/geth.ipc
