#!/bin/bash

echo "Checking web server services..."

if systemctl is-active --quiet apache2; then
    echo "Apache is running"
else
    echo "Apache is NOT running"
fi

if systemctl is-active --quiet mysql; then
    echo "MySQL is running"
else
    echo "MySQL is NOT running"
fi
