#!/bin/bash
# Script to run the Battery Checker as a Job.

javac src/batt.java

while(true); do
	java src/battCheck

	sleep 90
	echo "Waited"
done
