#!/bin/bash

for word in `cat /etc/resolv.conf`; do
 echo "$word"
done

echo "done"
