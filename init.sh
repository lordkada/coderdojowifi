#! /bin/bash

echo ��"installing hostapd..."
sudo apt-get install bridge-utils hostapd
wget http://www.daveconroy.com/wp3/wp-content/uploads/2013/07/hostapd.zip
unzip hostapd.zip 
sudo mv /usr/sbin/hostapd /usr/sbin/hostapd.bak
sudo mv hostapd /usr/sbin/hostapd.edimax 
sudo ln -sf /usr/sbin/hostapd.edimax /usr/sbin/hostapd 
sudo chown root.root /usr/sbin/hostapd 
sudo chmod 755 /usr/sbin/hostapd

cp conf/hostapd.conf /etc/hostapd/
echo "DAEMON_CONF=\"/etc/hostapd/hostapd.conf\"" >> /etc/default/hostapd