#!/bin/sh

set -e

ROOT='/home/mturilli/experiments/AIMES-Experience/XSEDE/bin'
TMP='/tmp/profiles'
STORE='/home/mturilli/experiments/AIMES-Experience/XSEDE/raw_data'
EXP='experiment_1'

sid=$1
run=$2
bot=$3

cd $TMP
echo $PWD

# Note: $ROOT is on the _local_ machine
echo "radicalpilot-fetch-profiles -c $ROOT $sid"
radicalpilot-fetch-profiles -c $ROOT $sid

echo "cp $ROOT/$run/$sid.json $sid/"
cp $ROOT/$run/$sid.json $sid/

echo "mv $sid $STORE/$EXP/$bot/"
mv $sid $STORE/$EXP/$bot/

ls -altr $STORE/$EXP/$bot/
ls $STORE/$EXP/$bot/$sid/
cd $ROOT
