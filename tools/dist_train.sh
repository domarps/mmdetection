#!/usr/bin/env bash

PYTHON=${PYTHON:-"python"}

# $(dirname $0) : ./tools
# $1  : config file
# $2  : <GPU_NUM>
# ${@:3} : all the optional arguments

$PYTHON -m torch.distributed.launch --nproc_per_node=$2 $(dirname "$0")/train.py $1 --launcher pytorch ${@:3}
