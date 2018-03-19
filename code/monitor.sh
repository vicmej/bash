#!/bin/bash

TIEMPO=`ping -c 1 $1 | head -2 | tail -1 | \
		  cut -d '=' -f4 | cut -d ' ' -f1`

FECHA=`/usr/bin/date +%d%m%Y`

echo $1","$TIEMPO >> $PWD/monitor-$FECHA.csv
