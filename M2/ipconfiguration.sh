#!/usr/bin/bash


#Ubah enp0s3 dengan Network yang tadi sudah dicatat
#Untuk VM yang kedua ubah jubah dari 10.10.10.10 menjadi 10.10.10.20

sudo cat >> /etc/network/interfaces << EOF
auto enp0s3
iface enp0s3 inet static
        address 10.10.10.10
        netmask 255.255.255.0 
EOF

sudo /etc/init.d/networking restart
sudo service networking restart