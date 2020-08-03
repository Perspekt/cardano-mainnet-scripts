#!/bin/bash

curl -sL -o $CNODE_HOME/files/byron-genesis.json https://hydra.iohk.io/build/3644329/download/1/mainnet-byron-genesis.json
curl -sL -o $CNODE_HOME/files/genesis.json https://hydra.iohk.io/build/3644329/download/1/mainnet-shelley-genesis.json
curl -sL -o $CNODE_HOME/files/topology.json https://hydra.iohk.io/build/3644329/download/1/mainnet-topology.json
curl -sL -o $CNODE_HOME/files/config.json https://hydra.iohk.io/build/3644329/download/1/mainnet-config.json
