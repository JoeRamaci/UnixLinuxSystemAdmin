#!/bin/bash

awk -F : '$3 >= 1000 {
	if ($7 != "/bin/bash") {
		printf "%s*\n", $1
	} else {
		printf "%s\n", $1
	}
}' /etc/passwd


