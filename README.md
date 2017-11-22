## Install dependencies

- git

   Install [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) commandline tool.

- docker

   Install [docker](https://docs.docker.com/engine/installation). The community edition (docker-ce) will work. In Linux make sure you grant permissions to the current user to use docker by adding current user to docker group, `sudo usermod -aG docker $USER`. Once you update the users group, exit from the current terminal and open a new one to make effect.

- docker-compose

   Install [docker-compose](https://docs.docker.com/compose/install)
   
**Note**:- Make sure you can run `git`, `docker ps`, `docker-compose` without any issue and without sudo command.

## Install 
```
$ git clone https://github.com/eduadiez/givethPuppethConnect.git
$ cd givethPuppethConnect
```

## Initialize 
```
$ docker-compose run --rm giveth_puppeth_network init --datadir=/root/.giveth /root/config/giveth.json
```

## Start
```
$ docker-compose up -d
or for foreground
$ docker-compose up 
```

## Test
```
$ npm install
$ node socketTest.js
```

## Mining
```
$ ./start_mining.sh
$ ./stop_mining.sh
```

## Attach to console
```
$ docker-compose run --rm giveth_puppeth_network attach /root/.giveth/geth.ipc
```
