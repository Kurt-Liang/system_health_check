#!/bin/bash

echo "System Health Check Script Setting..."
mkdir -p /etc/ansible/task
mkdir -p /home/logs/system_health_check
mkdir -p /home/system_health_check
cp system_health_check.sh /home/system_health_check
cp -R ./module /etc/ansible/task
cp ./acom /etc/ansible/task
cp system_health_check.yml /etc/ansible/task
echo "localhost       ansible_connection=local" >> /etc/ansible/hosts

echo "Clear pagecache, dentries, and inodes..."
sync; echo 3 > /proc/sys/vm/drop_caches

echo "Success!!"