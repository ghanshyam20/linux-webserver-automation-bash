#!/bin/bash

echo "Server Status Report"
echo "--------------------"

echo "Apache status:"
systemctl is-active apache2

echo "MySQL status:"
systemctl is-active mysql

echo "CPU usage:"
top -bn1 | grep "Cpu"

echo "Memory usage:"
free -h

echo "Disk usage:"
df -h
