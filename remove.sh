#!/bin/bash

for archivo in *
do
	size=$(ls -lh $archivo | awk {'print $5'}) 
	cat /dev/zero | pv -pebr -s $size | head -c $size > $archivo
	cat /dev/null > $archivo
done

