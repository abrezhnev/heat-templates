#!/bin/bash

DEFAULT_STACK_NAME="osp"
STACK_NAME=${1-$DEFAULT_STACK_NAME}

openstack stack create $OS_USERNAME-$STACK_NAME \
  -t undercloud.yaml \
  -e env.yaml
