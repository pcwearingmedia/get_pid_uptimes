#!/bin/bash

# Get the uptime for all process PIDs found in the system.
# Author: P-C Markovski


processes=($(ps aux | awk {'print $2;'}))

i=0

while [ $i -lt ${#processes[@]} ]
do
	ps -o stime,time $i
	((i=i+1))
done

