#!/bin/bash

WAITEND=$((SECONDS+30))
while !  [ -c "/dev/ttyUSB0" ] && [ ${SECONDS} -lt ${WAITEND} ]; do	
	sleep 0.1
done

if [ -c "/dev/ttyUSB0" ]; then 	
	export PATH="/media/fat/Scripts:$PATH"
	stty 9600 -F /dev/ttyUSB0 raw -echo
	bash </dev/ttyUSB0
fi
