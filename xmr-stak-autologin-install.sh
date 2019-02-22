#!/bin/bash

# checking and installing dependencies
# install screen strace
apt -y install screen strace htop

# create stratumos folder
cd /
mkdir stratumos
mkdir stratumos/xmr-stak
mkdir stratumos/xmr-stak/backup
cp -a /stratumos/xmr-stak/. /stratumos/xmr-stak/backup/
cp -a /home/$stratumos_user/xmr-stak/build/bin/. /stratumos/xmr-stak/

cat > /stratumos/xmr-stak/xmr-stak.sh << EOF
#!/bin/bash
sysctl -w vm.nr_hugepages=266
/stratumos/xmr-stak/xmr-stak --config /stratumos/xmr-stak/config.txt --poolconf /stratumos/xmr-stak/pools.txt
EOF
chmod +x /stratumos/xmr-stak/xmr-stak.sh

cat > /stratumos/xmr-stak/xmr-stak-screen << EOF
#!/bin/bash
/usr/bin/screen -dmS xmr-stak '/stratumos/xmr-stak/xmr-stak.sh'
EOF
chmod +x /stratumos/xmr-stak/xmr-stak-screen

cat > /root/.profile  << 'EOF'
[[ $(tty) = /dev/tty1 ]] && sleep 60; /stratumos/xmr-stak/xmr-stak-screen & htop
EOF

# create vi file in sudoers.d folder
cat > /etc/sudoers.d/$stratumos_user << EOF
# user $stratumos_user use sudo without password
$stratumos_user ALL=(ALL) NOPASSWD:ALL
EOF
chmod 444 /etc/sudoers.d/$stratumos_user

# use root after login
printf '%s\n%s\n' 'sudo -s' >> /home/$stratumos_user/.profile
printf '%s\n%s\n' 'cd /root' >> /home/$stratumos_user/.profile

rm /etc/init.d/xmr-stak
update-rc.d xmr-stak disable
echo "vm.nr_hugepages=128" >> /etc/sysctl.conf
sysctl -p

# autologin as root in tty1
mkdir -pv /etc/systemd/system/getty@tty1.service.d
rm /etc/systemd/system/getty@tty1.service.d/autologin.conf
cat > /etc/systemd/system/getty@tty1.service.d/autologin.conf << EOF
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin root --noclear %I $TERM
EOF

