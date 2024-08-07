#!/bin/bash
echo "To run me, give an arg and i will print the last 10 lines of it!"
echo "try using /etc/passwd"

tail $1
