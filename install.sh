#!/bin/bash

PAUSE=1
stratumos_user=vi

# checking and installing dependencies

# install screen strace
apt -y install screen

# create stratumos folder
mkdir /stratumos

change_hostname() {
hostname=node
hostname=$(cat /sys/class/dmi/id/product_uuid)
hostnamectl set-hostname "$hostname"
}

# create stratum-watchdog
cat > /etc/init.d/stratum-watchdog << EOF
#!/bin/bash
# chkconfig 235 99 10
### BEGIN INIT INFO
# Provides: System Sixty Six 
# Required-Start:    \$local_fs \$network \$syslog
# Required-Stop:     \$local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: str-xmrig
# Description:       StratumOS stratum-watchdog service
### END INIT INFO
# Author: Darius Mark <darius@system66.com>
case "\$1" in
	'start')
		/usr/bin/screen -dmS stratum-watchdog '' &
  ;;
	'stop')
    screen -S stratum-watchdog -p 0 -X quit
		echo "pkill stratum-watchdog"
		pkill stratum-watchdog
		screen -ls
  ;;
	'status')
		screen -ls
  ;;
	'restart')
		screen -ls
    pkill stratum-watchdog
    screen -S stratum-watchdog -p 0 -X quit
		/usr/bin/screen -dmS stratum-watchdog ''
    screen -ls
  ;;
	*)
	echo "Usage: $N {start|stop|status|restart}" >&2
	exit 1
	;;
esac
EOF

chmod +x /etc/init.d/stratum-watchdog
echo "update-rc.d stratum-watchdog defaults"
update-rc.d stratum-watchdog defaults
echo "update-rc.d stratum-watchdog enable"
update-rc.d stratum-watchdog enable
systemctl restart stratum-watchdog
systemctl daemon-reload
