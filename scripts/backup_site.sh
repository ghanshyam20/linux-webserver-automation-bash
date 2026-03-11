#!/bin/bash

DATE=$(date +%F)

tar -czf ~/Desktop/wordpress-automation-blog/backups/site-$DATE.tar.gz /var/www/html

echo "Backup completed"
