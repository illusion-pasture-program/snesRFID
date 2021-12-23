#!/bin/bash

sleep 5
export PATH="/media/fat/Scripts:$PATH"
#stty 9600 -F /dev/ttyACM0 raw -echo
#bash -v </dev/ttyACM0 
#bash
stty 9600 -F /dev/ttyUSB0 raw -echo
#bash -v </dev/ttyUSB0 
bash </dev/ttyUSB0
#bash
