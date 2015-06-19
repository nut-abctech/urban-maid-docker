#!/bin/sh

echo "Start updating repo"

cd urban-maid && rm -rf ./urban-maid/node_modules

npm install

git fetch origin master

./node_modules/.bin/admin ./pg-config

#exit
exit $?