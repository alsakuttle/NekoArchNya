#!/bin/bash

set -eu

NET_IF=""
dhcpcd -h noleak -i noleak -v ,noleak -I noleak -t 10 -i $NET_IF
sed -i 's/#\(Storage=\)auto/\1volatile/' /etc/systemd/journald.conf

sed -i 's/#\(HandleSuspendKey=\)suspend/\1ignore/' /etc/systemd/logind.conf
sed -i 's/#\(HandleHibernateKey=\)hibernate/\1ignore/' /etc/systemd/logind.conf
sed -i 's/#\(HandleLidSwitch=\)suspend/\1ignore/' /etc/systemd/logind.conf

pacman-key --init
pacman-key --populate archlinux
pacman-db-upgrade
updatedb
sync

if [ ! -d /root ]; 
then
  mkdir /root
  chmod 700 root 
  chown -R root:root /root
fi


echo 'IceLinux' > /etc/arch-release

echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
