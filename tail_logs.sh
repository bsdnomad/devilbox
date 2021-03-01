#!/bin/bash

if [ "$#" -eq "0" ]; then
	find log/ -type f -name "*error.log" -or -name "*.error" | xargs tail -f -n0
else
	find log/ -type f -name "*.log" | xargs tail -f -n0
fi

