#!/bin/bash

#!/bin/bash

NAME="cardano-node run"
PID=$(pgrep -f 'cardano-node run')
echo $PID

if [ -z "$PID" ]
then
      echo "$NAME is stopped..."
      echo "=========Starting $NAME=========="
else
      echo "=========$NAME is already started========="
      echo "PID is: $PID"
      echo "Killing process: $PID..."
      kill $PID
      echo "Restarting $NAME..."
fi

cardano-node run \
   --topology /opt/cardano/cnode/files/topology.json \
   --database-path /opt/cardano/cnode/db \
   --socket-path /opt/cardano/cnode/sockets/node0.socket \
   --port 3000 \
   --config /opt/cardano/cnode/files/config.json
