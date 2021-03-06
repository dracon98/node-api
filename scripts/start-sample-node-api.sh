#!/bin/sh

# find node bin
# export NODE_HOME=/usr/lpp/IBM/cnj/IBM/node-v6.14.4-os390-s390x 
# export NODE_HOME=/Z23B/usr/lpp/IBM/cnj/IBM/node-v6.14.4-os390-s390x
# export NODE_HOME=/u/nodejs/node-v6.16.0-os390-s390x

echo 'starting sample node api...'
if [ ! -z "$NODE_HOME" ]; then
  NODE_BIN=${NODE_HOME}/bin/node
  NPM_CLI=${NODE_HOME}/lib/node_modules/npm/bin/npm-cli.js
else
  echo "Error: cannot find node bin, node app did not start"
  exit 1
fi

# get current script directory
SCRIPT_DIR=$(dirname "$0")

# get to new node app source directory
cd "$SCRIPT_DIR/.."

# start service
$NODE_BIN server/app.js &
echo 'starting sample node api done'
