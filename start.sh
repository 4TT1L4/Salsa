#!/bin/bash
echo "Starting server..."
set -x
NODE_DEBUG=cluster,net,http,fs,tls,module,timers node app.js &
set +x
start chrome http://localhost:3000
echo "TERMINATED."
