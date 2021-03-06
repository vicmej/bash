#!/bin/bash

NTPD_ID=`pgrep ntpd`

ntpd_start() {
	if [ -z $NTPD_ID ]; then
		echo "Starting ntpd server"
		/usr/sbin/ntpd
	else
		echo "NTPD is running"
	fi
}

ntpd_stop() {
	if [ -z $NTPD_ID ]; then
		echo "No NTPD ID process"
	else
		echo "Stopping NTPD server"
		kill -HUP $NTPD_ID
		NTPD_ID=""
		echo -n $NTPD_ID
	fi
}

ntpd_restart() {
	ntpd_stop
	sleep 1
	ntpd_start
}

case "$1" in
	'start')
		ntpd_start
		;;
	'stop')
		ntpd_stop
		;;
	'restart')
		ntpd_restart
		;;
	*)
		echo "Usa $0 start|stop|restart"
esac
