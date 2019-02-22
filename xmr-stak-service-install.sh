#!/bin/bash
# service not working in Ubuntu 16
# working well in Debian 8 and 9

PAUSE=1
stratumos_user=vi

# checking and installing dependencies

# install screen strace
apt -y install screen strace

# create stratumos folder
cd /
mkdir stratumos
mkdir stratumos/xmr-stak
mkdir stratumos/xmr-stak/backup
cp -a /stratumos/xmr-stak/. /stratumos/xmr-stak/backup/
cp -a /home/$stratumos_user/xmr-stak/build/bin/. /stratumos/xmr-stak/

# create vi file in sudoers.d folder
cat > /etc/sudoers.d/$stratumos_user << EOF
# user $stratumos_user use sudo without password
$stratumos_user ALL=(ALL) NOPASSWD:ALL
EOF
chmod 444 /etc/sudoers.d/$stratumos_user

# use root after login
printf '%s\n%s\n' 'sudo -s' >> /home/$stratumos_user/.profile

rm /etc/init.d/xmr-stak

# create xmr-stak autostart file
cat > /etc/init.d/xmr-stak << EOF
#!/bin/bash
# chkconfig 235 99 10
### BEGIN INIT INFO
# Provides: System Sixty Six 
# Required-Start:    \$local_fs \$network \$syslog
# Required-Stop:     \$local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: xmr-stak autostart
# Description:       xmr-stak autostart
### END INIT INFO
# Author: Darius Mark <darius@system66.com>

case "\$1" in
	'start')
		/usr/bin/screen -dmS xmr-stak '/stratumos/xmr-stak/xmr-stak' --config /stratumos/xmr-stak/config.txt --poolconf /stratumos/xmr-stak/pools.txt &
	;;
	'stop')
		echo "pkill xmr-stak"
		pkill xmr-stak
		screen -wipe
		screen -ls
	;;
	'status')
		screen -ls
	;;
	*)
		echo "Usage: $N {start|stop|status}" >&2
		exit 1
	;;

esac
EOF

chmod +x /etc/init.d/xmr-stak
echo "update-rc.d xmr-stak defaults"
update-rc.d xmr-stak defaults
echo "update-rc.d xmr-stak enable"
update-rc.d xmr-stak enable

echo "vm.nr_hugepages=128" >> /etc/sysctl.conf
sysctl -p
