#!/bin/bash

cd /root/kerkoapp/ && docker-compose exec kerkoapp flask kerko sync
