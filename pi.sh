#!/bin/bash

for i in {0..254}
do
	ping -c 2 10.36.200.$i
done
