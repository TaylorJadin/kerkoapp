#!/bin/bash
# Script designed to be scheduled in cron:
# @daily /root/kerkoapp/sync.sh > /root/kerkoapp/sync.log 2>&1

docker exec kerkoapp flask kerko sync
