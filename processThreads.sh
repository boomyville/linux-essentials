# Returns the number of CPU threads a process is utilising based on exact process name

#!/bin/bash

read  -p "Name of process: "  var;

a=$(ps aux | grep $var | grep -v grep | awk {'print $2'})

cat /proc/$a/status | grep -i threads
