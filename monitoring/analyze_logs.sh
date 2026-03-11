#!/bin/bash

LOG="/var/log/apache2/access.log"

echo "Visitor statistics"
echo "------------------"

echo "Top 10 visitors:"
awk '{print $1}' $LOG | sort | uniq -c | sort -nr | head

echo "Top requested pages:"
awk '{print $7}' $LOG | sort | uniq -c | sort -nr | head
