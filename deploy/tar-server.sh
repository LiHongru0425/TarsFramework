#!/bin/bash

source $HOME/.bashrc

npm install -g npm pm2 \
    && cd ${TARS_INSTALL}/web && npm install \
    && cd ${TARS_INSTALL}/web/demo && npm install

mkdir -p /data/tars/app_log
mkdir -p /data/tars/web_log
mkdir -p /data/tars/demo_log
mkdir -p /data/tars/patchs
mkdir -p /data/tars/tarsnode-data

mkdir -p /usr/local/app/tars/
mkdir -p /usr/local/app/web/
mkdir -p /usr/local/app/web/demo/
mkdir -p /usr/local/app/tars/tarsnode

ln -s /data/tars/app_log /usr/local/app/tars/app_log 
ln -s /data/tars/web_log /usr/local/app/web/log 
ln -s /data/tars/demo_log /usr/local/app/web/demo/log 
ln -s /data/tars/patchs /usr/local/app/patchs 
ln -s /data/tars/tarsnode-data /usr/local/app/tars/tarsnode/data

