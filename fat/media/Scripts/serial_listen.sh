#!/bin/bash

sleep 5
export PATH="/media/fat/Scripts:$PATH"
stty 9600 -F /dev/ttyUSB0 raw -echo
bash </dev/ttyUSB0
