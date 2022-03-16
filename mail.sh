#!/bin/bash
size=`df -h . | awk -F " " '(NR>1) {print $(NF-1)}' | sed 's/%/ /g'`
if [ $size -gt 20 ]
then
	echo "memory reaches the trushold value" | mail -s "memory reached" ambareeshns@gmail.com
fi
echo" edited y dayanand"