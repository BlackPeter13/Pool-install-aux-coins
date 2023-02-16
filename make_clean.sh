#!/usr/bin/env bash
#####################################################
# Created by afiniel for crypto use...
#####################################################
clear
source /etc/functions.sh
source /etc/yiimpool.conf
source $HOME/yiimpool/daemon_builder/.my.cnf
source $STORAGE_ROOT/daemon_builder/temp_coin_builds/.lastcoin.conf
cd $STORAGE_ROOT/daemon_builder/temp_coin_builds/${lastcoin}

# Set what we need
now=$(date +"%m_%d_%Y")
set -e
NPROC=$(nproc)

# re-run autogen file
make clean
echo Build directory cleaned.
echo Type daemonbuilder at anytime to install a new coin!
